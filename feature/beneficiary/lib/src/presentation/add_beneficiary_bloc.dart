import 'dart:math';

import 'package:beneficiary/src/navigator/beneficiary_navigator.dart';
import 'package:beneficiary/src/utils/beneficiary_form_validator.dart';
import 'package:beneficiary/src/utils/beneficiary_ui_error.dart';
import 'package:core/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:prelude/prelude.dart';
import 'package:uuid/uuid.dart';

part 'add_beneficiary_bloc.freezed.dart';
part 'add_beneficiary_event.dart';
part 'add_beneficiary_state.dart';

@injectable
class AddBeneficiaryBloc
    extends Bloc<AddBeneficiaryEvent, AddBeneficiaryState> {
  AddBeneficiaryBloc(
    this._saveBeneficiary,
    this._navigator,
  ) : super(AddBeneficiaryState(uiState: UiState.loaded())) {
    on<AddBeneficiaryEvent>(
      (event, emit) => event.map(
        load: (_) => null,
        nameChange: (e) => _onNameChange(e, emit),
        nickNameChange: (e) => _onNickNameChange(emit, e),
        phoneNameChange: (e) => _onPhoneNumberChange(emit, e),
        save: (_) => _onSave(emit),
      ),
    );
  }

  final SaveBeneficiaryUseCase _saveBeneficiary;
  final BeneficiaryNavigator _navigator;

  Future<void> _onNickNameChange(
    Emitter<AddBeneficiaryState> emit,
    _NickNameChangeAddBeneficiaryEvent e,
  ) async {
    final nickName = validateNickName(e.nickName.trim());
    emit(
      state.copyWith(
        nickNameField: nickName,
        hasErrors: hasErrors(
          [
            nickName,
            validateName(state.nameField.value.trim()),
            validatePhoneNumber(state.phoneField.value.trim()),
          ],
        ),
      ),
    );
  }

  Future<void> _onPhoneNumberChange(
    Emitter<AddBeneficiaryState> emit,
    _PhoneChangeAddBeneficiaryEvent e,
  ) async {
    final phone = validatePhoneNumber(e.phoneNumber.trim());
    emit(state.copyWith(
      phoneField: phone,
      hasErrors: hasErrors(
        [
          phone,
          validateName(state.nameField.value.trim()),
          validateNickName(state.nickNameField.value.trim()),
        ],
      ),
    ));
  }

  Future<void> _onNameChange(
    _NameChangeAddBeneficiaryEvent e,
    Emitter<AddBeneficiaryState> emit,
  ) async {
    final name = validateName(e.name.trim());
    emit(state.copyWith(
      nameField: name,
      hasErrors: hasErrors(
        [
          name,
          validateNickName(state.nickNameField.value.trim()),
          validatePhoneNumber(state.phoneField.value.trim()),
        ],
      ),
    ));
  }

  Future<void> _onSave(Emitter<AddBeneficiaryState> emit) async {
    emit(state.copyWith(uiState: UiState.loading()));

    final beneficiary = Beneficiary(
      id: Uuid().v1(),
      name: state.nameField.value,
      nickName: state.nickNameField.value,
      phoneNumber: state.phoneField.value,
      isVerified: Random().nextInt(2) == 1,
    );

    final result = await _saveBeneficiary(beneficiary: beneficiary);

    result.fold(
      (s) {
        emit(state.copyWith(showSnackbar: true));
        emit(state.copyWith(showSnackbar: false));
        return _navigator.onBeneficiaryAdded();
      },
      (e) => emit(state.copyWith(uiState: UiState.error(e))),
    );
  }
}
