import 'package:flutter_ddd_architecture/domain/auth/user.dart' as user;
import 'package:flutter_ddd_architecture/domain/core/value_objects.dart';
import 'package:firebase_auth/firebase_auth.dart';

extension FirebaseUserDomainX on User {
  user.User toDomain(){
    return user.User(id: UniqueId.fromUniqueString(uid));
  }
}