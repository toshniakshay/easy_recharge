import 'package:core/src/domain/models/beneficiary.dart';
import 'package:injectable/injectable.dart';

@Singleton()
@injectable
class BeneficiaryMock {
  List<Beneficiary> _beneficiaryList = [];

  List<Beneficiary> get beneficiaryList => _beneficiaryList;

  void addBeneficiary(Beneficiary beneficiary) {
    _beneficiaryList.add(beneficiary);
  }

  Beneficiary getBeneficiaryById({required String id}) =>
      _beneficiaryList.firstWhere((b) => b.id == id);

  void removeBeneficiary(Beneficiary beneficiary) {
    _beneficiaryList.remove(beneficiary);
  }
}
