import 'package:core/core.dart';
import 'package:core/src/domain/models/beneficiary.dart';
import 'package:core/src/domain/repository/beneficiary_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:prelude/prelude.dart';

@injectable
class SaveBeneficiaryUseCase {
  const SaveBeneficiaryUseCase(this._repository);

  final BeneficiaryRepository _repository;

  Future<Result<void, Exception>> call({required Beneficiary beneficiary}) {
    return _repository.saveBeneficiary(beneficiary: beneficiary);
  }
}
