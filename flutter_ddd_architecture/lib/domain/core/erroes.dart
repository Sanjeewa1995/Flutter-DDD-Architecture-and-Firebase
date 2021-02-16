import 'package:flutter_ddd_architecture/domain/core/failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation = 'Encountered at an unrecoverable point. Treminating.';
    return Error.safeToString('$explanation Failure was : $valueFailure');
  }
}
