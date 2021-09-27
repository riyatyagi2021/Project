
abstract class LoginEvent {}

class EmailEvent extends LoginEvent {
  late String email;
  EmailEvent(this.email);
}


class PasswordEvent extends LoginEvent {
  late String password;
  PasswordEvent(this.password);
}

class OnLoginEvent extends LoginEvent {
  late String email;
  late String password;
  OnLoginEvent(this.email, this.password);
}