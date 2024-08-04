part of 'add_beneficiary_bloc.dart';

@freezed
class AddBeneficiaryState with _$AddBeneficiaryState {
  const factory AddBeneficiaryState({
    @Default(UiState.initial()) UiState uiState,
    @Default(AddBeneficiaryField(value: ''))
    AddBeneficiaryField<String> nameField,
    @Default(AddBeneficiaryField(value: ''))
    AddBeneficiaryField<String> nickNameField,
    @Default(AddBeneficiaryField(value: ''))
    AddBeneficiaryField<String> phoneField,
    @Default(true) bool hasErrors,
    @Default(false) bool beneficiaryAdded,
  }) = _AddBeneficiaryState;
}

@freezed
class AddBeneficiaryField<T> with _$AddBeneficiaryField<T> {
  const factory AddBeneficiaryField({
    required T value,
    BeneficiaryErrorType? error,
  }) = _AddBeneficiaryField;
}
