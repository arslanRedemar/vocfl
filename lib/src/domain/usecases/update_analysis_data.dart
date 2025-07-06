import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../core/usecases/usecase.dart';
import '../entities/analysis_data.dart';
import '../repositories/analysis_repository.dart';

class Params {
  final AnalysisData data;

  Params({required this.data});
}

class UpdateAnalysisData extends UseCase<void, Params> {
  final AnalysisRepository repository;

  UpdateAnalysisData(this.repository);

  @override
  Future<Either<Failure, void>> call(Params params) {
    return repository.updateAnalysisData(params.data);
  }
}
