import 'package:bloc_chat_app/core/models/user_model.dart';

abstract class SplashState {}

class SplashUserDataState extends SplashState {
  UserModel userModel;
  SplashUserDataState(this.userModel);
}

class SplashUserNotFound extends SplashState {}

class SplashUserLoadingState extends SplashState {}

class SplashInital extends SplashState {}
