import 'package:core/core.dart';
import 'package:core/src/domain/repository/beneficiary_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:prelude/prelude.dart';

@injectable
class GetBeneficiaryByIdUseCase {
  const GetBeneficiaryByIdUseCase(this._repository);

  final BeneficiaryRepository _repository;

  Future<Result<Beneficiary, Exception>> call({
    required String beneficiaryId,
  }) async =>
      _repository.getBeneficiaryById(beneficiaryId: beneficiaryId);
}
