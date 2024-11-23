import 'package:flutter/material.dart';
import 'package:login_register_home/widgets/my_widget.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyWidget(
      child: Text('Sign in'),
    );
  }
}