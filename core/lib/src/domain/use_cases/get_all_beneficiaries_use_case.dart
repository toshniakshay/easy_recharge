import 'package:core/src/domain/models/beneficiary.dart';
import 'package:core/src/domain/repository/beneficiary_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:prelude/prelude.dart';

@injectable
class GetAllBeneficiariesUseCase {
  const GetAllBeneficiariesUseCase(this._repository);

  final BeneficiaryRepository _repository;

  Future<Result<List<Beneficiary>, Exception>> call() async {
    return _repository.getAllBeneficiaries();
  }
}
