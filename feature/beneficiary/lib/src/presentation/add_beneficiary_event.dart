part of 'add_beneficiary_bloc.dart';

@freezed
class AddBeneficiaryEvent with _$AddBeneficiaryEvent {
  const factory AddBeneficiaryEvent.load() = _LoadAddBeneficiaryEvent;

  const factory AddBeneficiaryEvent.nameChange({
    required String name,
  }) = _NameChangeAddBeneficiaryEvent;

  const factory AddBeneficiaryEvent.nickNameChange({
    required String nickName,
  }) = _NickNameChangeAddBeneficiaryEvent;

  const factory AddBeneficiaryEvent.phoneNameChange({
    required String phoneNumber,
  }) = _PhoneChangeAddBeneficiaryEvent;

  const factory AddBeneficiaryEvent.save() = _SaveAddBeneficiaryEvent;
}
