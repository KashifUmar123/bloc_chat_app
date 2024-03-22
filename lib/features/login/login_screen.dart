import 'package:bloc_chat_app/core/extensions/num_extension.dart';
import 'package:bloc_chat_app/core/extensions/style_extension.dart';
import 'package:bloc_chat_app/core/widgets/custom_button.dart';
import 'package:bloc_chat_app/core/widgets/custom_scaffold.dart';
import 'package:bloc_chat_app/core/widgets/custom_textfield.dart';
import 'package:bloc_chat_app/features/login/login_bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late LoginBloc _loginBloc;
  @override
  void initState() {
    super.initState();
    _loginBloc = LoginBloc();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (con) => _loginBloc,
      child: CustomScaffold(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Chat App With Bloc",
              style: context.body18400,
            ),
            30.heightSpace,
            const CustomTextfield(
              hinText: "Enter email",
            ),
            20.heightSpace,
            const CustomTextfield(
              hinText: "Enter password",
              isPassword: true,
            ),
            30.heightSpace,
            CustomButton(
              text: "Login",
              callback: () {},
            ),
          ],
        ),
      ),
    );
  }
}
