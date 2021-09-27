
class LoginState{
  final bool isSuccess;
  final bool isEmailValid;
  final bool isPasswordvalid;
  LoginState._(this.isSuccess, this.isEmailValid, this.isPasswordvalid);

  LoginState.onLogin(LoginState state, bool isSuccess): this._(isSuccess, state.isEmailValid, state.isPasswordvalid );
  LoginState.onEmail(bool isEmailValid): this._(false, isEmailValid, false);
  LoginState.onPassword(LoginState state, bool isPassword, bool isSuccess): this._(isSuccess, state.isEmailValid, isPassword);
  LoginState.onInit(): this._(false, false, false);

}