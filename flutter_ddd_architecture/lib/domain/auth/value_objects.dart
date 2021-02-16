import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_ddd_architecture/domain/core/failures.dart';
import 'package:flutter_ddd_architecture/domain/core/value_objects.dart';
import 'package:flutter_ddd_architecture/domain/core/value_validators.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@immutable
class EmailAddress extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  const EmailAddress._(this.value);

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }
}

@immutable
class Password extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  const Password._(this.value);

  factory Password(String input) {
    assert(input != null);
    return Password._(
      validatePassword(input),
    );
  }
}
