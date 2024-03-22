import 'package:bloc_chat_app/core/models/user_model.dart';

abstract class LoginState {}

class LoginLoading extends LoginState {}

class LoginEmptyState extends LoginState {}

class LoginError extends LoginState {
  String error;
  LoginError(this.error);
}

class LoginSuccess extends LoginState {
  UserModel user;
  LoginSuccess(this.user);
}
