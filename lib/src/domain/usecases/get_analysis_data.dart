import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../core/usecases/usecase.dart';
import '../entities/analysis_data.dart';
import '../repositories/analysis_repository.dart';

class NoParams {}

class GetAnalysisData extends UseCase<AnalysisData, NoParams> {
  final AnalysisRepository repository;

  GetAnalysisData(this.repository);

  @override
  Future<Either<Failure, AnalysisData>> call(NoParams params) {
    return repository.getAnalysisData();
  }
}
