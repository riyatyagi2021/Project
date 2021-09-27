import 'package:bloc/bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'login_event.dart';
import 'login_state.dart';



class LoginBloc extends Bloc<LoginEvent, LoginState>{
  LoginBloc() : super(LoginState.onInit());

@override
  Stream<LoginState> mapEventToState(LoginEvent event) async*{


  if(event is EmailEvent){
    if(event.email.isNotEmpty && event.email.contains('@')){
      yield LoginState.onEmail(true);
    }else{
      Fluttertoast.showToast(msg: "Wrong email");
    }
  }

 else if(event is PasswordEvent){
    if(event.password.isNotEmpty && event.password.length>6){
      yield LoginState.onPassword(true);

    }else{
      Fluttertoast.showToast(msg: "Wrong password");
    }
  }

 else if(event is OnLoginEvent){
    yield LoginState.onLogin(true);
  }

 else{
    Fluttertoast.showToast(msg: "There is something wrong");
  }

  }
}

