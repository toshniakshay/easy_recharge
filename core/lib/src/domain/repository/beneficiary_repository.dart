import 'package:core/core.dart';
import 'package:injectable/injectable.dart';
import 'package:prelude/prelude.dart';

@injectable
class BeneficiaryRepository {
  // This will take dependency of API client once built
  BeneficiaryRepository(
    this._beneficiaryMock,
  );

  final BeneficiaryMock _beneficiaryMock;

  Future<Result<List<Beneficiary>, Exception>> getAllBeneficiaries() async {
    return success(_beneficiaryMock.beneficiaryList);
  }

  Future<Result<void, Exception>> saveBeneficiary({
    required Beneficiary beneficiary,
  }) async {
    _beneficiaryMock.addBeneficiary(beneficiary);
    return success(());
  }

  Future<Result<Beneficiary, Exception>> getBeneficiaryById({
    required String beneficiaryId,
  }) async {
    return success(_beneficiaryMock.getBeneficiaryById(id: beneficiaryId));
  }
}
