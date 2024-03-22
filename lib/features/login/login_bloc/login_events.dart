abstract class LoginEvent {}

class LoginUser extends LoginEvent {
  String email;
  String password;

  LoginUser({
    required this.email,
    required this.password,
  });
}
