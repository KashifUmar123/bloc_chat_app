import 'package:bloc_chat_app/features/login/login_bloc/login_events.dart';
import 'package:bloc_chat_app/features/login/login_bloc/login_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginEmptyState()) {
    on<LoginEvent>(
      (event, emit) async {
        if (event is LoginUser) {
          // login loading
          emit(LoginLoading());
          // login logic async
          await Future.delayed(const Duration(seconds: 2));

          emit(LoginEmptyState());
          // if userloged in successfully, emit UserSuccess else LoginError
        }
      },
    );
  }
}
