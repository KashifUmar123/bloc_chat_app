import 'package:bloc_chat_app/core/constans/app_colors.dart';
import 'package:bloc_chat_app/core/extensions/num_extension.dart';
import 'package:bloc_chat_app/core/extensions/style_extension.dart';
import 'package:bloc_chat_app/core/widgets/custom_scaffold.dart';
import 'package:bloc_chat_app/features/home/home_screen.dart';
import 'package:bloc_chat_app/features/login/login_screen.dart';
import 'package:bloc_chat_app/features/splash/splash_bloc/splash_bloc.dart';
import 'package:bloc_chat_app/features/splash/splash_bloc/splash_events.dart';
import 'package:bloc_chat_app/features/splash/splash_bloc/splash_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    context.read<SplashBloc>().add(SplashLoadingEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashBloc, SplashState>(
      buildWhen: (previous, current) {
        if (current is SplashUserDataState) {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (_) => const HomeScreen()));
        }
        return false;
      },
      builder: (_, state) {
        return CustomScaffold(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              30.heightSpace,
              Text(
                "Chat App with Bloc and Firebase",
                style: context.body18400,
              ),
              30.heightSpace,
              if (state is SplashUserLoadingState)
                const Center(
                  child: CircularProgressIndicator(
                    color: blueColor,
                  ),
                )
            ],
          ),
        );
      },
    );
  }
}
