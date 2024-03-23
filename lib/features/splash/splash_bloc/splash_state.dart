import 'package:bloc_chat_app/core/models/user_model.dart';

abstract class SplashState {}

class SplashUserLogin extends SplashState {
  UserModel userModel;
  SplashUserLogin(this.userModel);
}

class SplashUserNotFound extends SplashState {}

class SplashUserLoadingState extends SplashState {}

class SplashInital extends SplashState {}
