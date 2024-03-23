import 'package:bloc_chat_app/core/models/user_model.dart';
import 'package:bloc_chat_app/features/splash/splash_bloc/splash_events.dart';
import 'package:bloc_chat_app/features/splash/splash_bloc/splash_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashUserLoadingState()) {
    on<SplashLoadingEvent>(
      (event, emit) async {
        emit(SplashUserLoadingState());
        await Future.delayed(const Duration(seconds: 2));
        emit(SplashUserDataState(UserModel()));
      },
    );
  }
}
