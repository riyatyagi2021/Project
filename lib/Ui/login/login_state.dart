
class LoginState{
  final bool isSuccess;
  LoginState._(this.isSuccess);

  LoginState.onLogin(bool isSuccess): this._(isSuccess);
  LoginState.onEmail(bool isSuccess): this._(isSuccess);
  LoginState.onPassword(bool isSuccess): this._(isSuccess);
  LoginState.onInit(): this._(false);

}