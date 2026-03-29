import 'package:fpdart/fpdart.dart';
import '../error/failures.dart';

typedef TaskResult<T> = TaskEither<Failure, T>;
typedef TaskVoid = TaskEither<Failure, void>;
typedef TaskUnit = TaskEither<Failure, Unit>;
typedef StreamEither<T> = Stream<Either<Failure, T>>;