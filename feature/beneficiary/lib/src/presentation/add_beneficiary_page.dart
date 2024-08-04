import 'package:app_di/app_di.dart';
import 'package:beneficiary/src/presentation/add_beneficiary_bloc.dart';
import 'package:beneficiary/src/utils/beneficiary_ui_error.dart';
import 'package:beneficiary/src/utils/constants.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddBeneficiaryPage extends StatelessWidget {
  const AddBeneficiaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => diContainer<AddBeneficiaryBloc>(),
      child: AppScaffold(
        appbar: ApplicationTopBar(title: Constants.screenTitle),
        body: BlocListener<AddBeneficiaryBloc, AddBeneficiaryState>(
          listener: (context, state) {
            if (state.beneficiaryAdded) {
              Navigator.of(context).pop();
            }
          },
          child: BlocBuilder<AddBeneficiaryBloc, AddBeneficiaryState>(
            builder: (context, state) => state.uiState.map(
              initial: (_) => Loading(),
              loading: (_) => Loading(),
              loaded: (_) => _Content(state: state),
              error: (_) => ErrorStateView(
                onRetry: () => context.read<AddBeneficiaryBloc>().add(
                      AddBeneficiaryEvent.load(),
                    ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Content extends StatelessWidget {
  const _Content({required this.state});

  final AddBeneficiaryState state;

  @override
  Widget build(BuildContext context) {
    return AppSubmitForm(
      body: Padding(
        padding: const EdgeInsets.all(sm),
        child: Column(
          children: [
            AppInputFormField(
              onChanged: (s) => context
                  .read<AddBeneficiaryBloc>()
                  .add(AddBeneficiaryEvent.nameChange(name: s)),
              label: Constants.beneficiaryName,
              autoFocus: false,
              enabled: true,
              errorText: _getNameErrorText(state.nameField),
              text: state.nameField.value,
              textInputType: TextInputType.text,
              textInputAction: TextInputAction.next,
              maxLength: 100,
            ),
            SizedBox(height: xs),
            AppInputFormField(
              onChanged: (s) => context
                  .read<AddBeneficiaryBloc>()
                  .add(AddBeneficiaryEvent.nickNameChange(nickName: s)),
              label: Constants.beneficiaryNickName,
              autoFocus: false,
              enabled: true,
              errorText: _getNickNameErrorText(state.nickNameField),
              text: state.nickNameField.value,
              helperText: Constants.beneficiaryNickNameHelp,
              textInputType: TextInputType.text,
              textInputAction: TextInputAction.next,
              maxLength: 20,
            ),
            SizedBox(height: xs),
            AppInputFormField(
              onChanged: (s) => context
                  .read<AddBeneficiaryBloc>()
                  .add(AddBeneficiaryEvent.phoneNameChange(phoneNumber: s)),
              label: Constants.beneficiaryPhoneNumber,
              autoFocus: false,
              enabled: true,
              errorText: _getPhoneErrorText(state.phoneField),
              text: state.phoneField.value,
              helperText: Constants.beneficiaryPhoneNumberHint,
              textInputType: TextInputType.phone,
              textInputAction: TextInputAction.next,
              maxLength: 10,
            ),
          ],
        ),
      ),
      bottomButton: PrimaryButton.blocked(
        title: Constants.save,
        onClick: state.hasErrors
            ? null
            : () => context.read<AddBeneficiaryBloc>().add(
                  AddBeneficiaryEvent.save(),
                ),
      ),
    );
  }

  String? _getNameErrorText(AddBeneficiaryField<String> nameField) {
    return nameField.error == null ? null : Constants.beneficiaryNameError;
  }

  String? _getNickNameErrorText(AddBeneficiaryField<String> nickNameField) {
    return nickNameField.error == null
        ? null
        : Constants.beneficiaryNickNameError;
  }

  String? _getPhoneErrorText(AddBeneficiaryField<String> phoneField) {
    if (phoneField.error == BeneficiaryErrorType.emptyField) {
      return Constants.beneficiaryPhoneNumberEmptyError;
    }
    if (phoneField.error == BeneficiaryErrorType.invalidPhone) {
      return Constants.beneficiaryPhoneNumberInvalidError;
    }
    return null;
  }
}
