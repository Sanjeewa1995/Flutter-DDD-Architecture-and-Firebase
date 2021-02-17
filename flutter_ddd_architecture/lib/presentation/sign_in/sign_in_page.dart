import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ddd_architecture/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:flutter_ddd_architecture/injection.dart';
import 'package:flutter_ddd_architecture/presentation/sign_in/widgets/sign_in_form.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In Page'),
        centerTitle: true,
      ),
      body:  BlocProvider(
        create: (context) => getIt<SignInFormBloc>(),
        child:  SignInForm(),
      ),
    );
  }
}
