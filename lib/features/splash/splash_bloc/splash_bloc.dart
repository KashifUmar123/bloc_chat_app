import 'package:bloc_chat_app/features/splash/splash_bloc/splash_events.dart';
import 'package:bloc_chat_app/features/splash/splash_bloc/splash_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashInital()) {
    on<SplashEvent>(
      (event, emit) async {
        if (event is SplasGetUserEvent) {
          emit(SplashUserLoadingState());
        }
      },
    );
  }
}
