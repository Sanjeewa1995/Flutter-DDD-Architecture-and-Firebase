import 'package:flutter/material.dart';
import 'package:flutter_ddd_architecture/injection.dart';
import 'package:flutter_ddd_architecture/presentation/core/app_widget.dart';
import 'package:injectable/injectable.dart';

void main() {
  configureInjection(Environment.prod);
  runApp(AppWidget());
}


