import 'package:bloc_chat_app/core/models/user_model.dart';

abstract class SplashEvent {}

class SplashLoadingEvent extends SplashEvent {}

class SplasGetUserEvent extends SplashEvent {}

class SplasUserLoadedEvent extends SplashEvent {
  UserModel userModel;
  SplasUserLoadedEvent(this.userModel);
}
