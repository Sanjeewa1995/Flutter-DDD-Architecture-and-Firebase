import 'dart:ui';

import 'package:dartz/dartz.dart';
import 'package:flutter_ddd_architecture/domain/core/failures.dart';
import 'package:flutter_ddd_architecture/domain/core/value_transformers.dart';
import 'package:flutter_ddd_architecture/domain/core/value_validators.dart';

import 'package:kt_dart/kt.dart';
import 'package:flutter_ddd_architecture/domain/core/value_objects.dart';

class NoteBody extends NotesValueObject<String> {
  const NoteBody._(this.value);

  static const maxLength = 1000;

  factory NoteBody(String input) {
    assert(input != null);
    return NoteBody._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  @override
  final Either<NotesValueFailure<String>, String> value;
}

class TodoName extends NotesValueObject<String> {
  @override
  final Either<NotesValueFailure<String>, String> value;

  static const maxLength = 30;

  factory TodoName(String input) {
    assert(input != null);
    return TodoName._(
      validateMaxStringLength(input, maxLength)
          .flatMap(validateStringNotEmpty)
          .flatMap(validateSingleLine),
    );
  }

  const TodoName._(this.value);
}

class NoteColor extends NotesValueObject<Color> {
  static const List<Color> predefinedColors = [
    Color(0xfffafafa), // canvas
    Color(0xfffa8072), // salmon
    Color(0xfffedc56), // mustard
    Color(0xffd0f0c0), // tea
    Color(0xfffca3b7), // flamingo
    Color(0xff997950), // tortilla
    Color(0xfffffdd0), // cream
  ];

  @override
  final Either<NotesValueFailure<Color>, Color> value;

  factory NoteColor(Color input) {
    assert(input != null);
    return NoteColor._(
      right(makeColorOpaque(input)),
    );
  }

  const NoteColor._(this.value);
}

class List3<T> extends NotesValueObject<KtList<T>> {
  @override
  final Either<NotesValueFailure<KtList<T>>, KtList<T>> value;

  static const maxLength = 3;

  factory List3(KtList<T> input) {
    assert(input != null);
    return List3._(
      validateMaxListLength(input, maxLength),
    );
  }

  const List3._(this.value);

  int get length {
    return value.getOrElse(() => emptyList()).size;
  }

  bool get isFull {
    return length == maxLength;
  }
}
