import 'package:beneficiary/src/presentation/add_beneficiary_bloc.dart';
import 'package:beneficiary/src/utils/beneficiary_ui_error.dart';

AddBeneficiaryField<String> validateName(String name) {
  BeneficiaryErrorType? error;
  if (name.isEmpty) {
    error = BeneficiaryErrorType.emptyField;
  }

  return AddBeneficiaryField(value: name, error: error);
}

AddBeneficiaryField<String> validateNickName(String nickName) {
  BeneficiaryErrorType? error;
  if (nickName.isEmpty) {
    error = BeneficiaryErrorType.emptyField;
  }

  return AddBeneficiaryField(value: nickName, error: error);
}

AddBeneficiaryField<String> validatePhoneNumber(String phone) {
  final phoneValidator =
      RegExp(r"^(?:\+971|00971|0)(?:2|3|4|6|7|9|50|51|52|55|56)[0-9]{7}$");

  BeneficiaryErrorType? error;
  if (phone.isEmpty) {
    error = BeneficiaryErrorType.emptyField;
  } else if (!phoneValidator.hasMatch(phone)) {
    error = BeneficiaryErrorType.invalidPhone;
  }
  return AddBeneficiaryField(value: phone, error: error);
}

bool hasErrors(List<AddBeneficiaryField<dynamic>> fields) {
  for (final field in fields) {
    if (field.error != null) {
      return true;
    }
  }
  return false;
}
