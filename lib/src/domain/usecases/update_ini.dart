import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../../../core/usecases/usecase.dart';
import '../entities/ini.dart';
import '../repositories/ini_repository.dart';

class Params {
  Ini ini;
  Params({required this.ini});
}

class UpdateIni implements UseCase<void, Params> {
  final IniRepository repository;
  UpdateIni({required this.repository});

  @override
  Future<Either<Failure, void>> call(Params params) {
    return repository.updateIni(params.ini);
  }
}
