import 'package:dartz/dartz.dart';
import 'package:flutter_ddd_architecture/domain/auth/auth_failure.dart';
import 'package:flutter_ddd_architecture/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

abstract class IAuthFacade{
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress, Password password
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress, Password password
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
}