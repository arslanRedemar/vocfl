import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../../../core/usecases/usecase.dart';
import '../entities/ini.dart';
import '../repositories/ini_repository.dart';

class NoParams {}

class GetIni implements UseCase<Ini, NoParams> {
  final IniRepository repository;
  GetIni({required this.repository});

  @override
  Future<Either<Failure, Ini>> call(NoParams params) {
    return repository.getIni();
  }
}
