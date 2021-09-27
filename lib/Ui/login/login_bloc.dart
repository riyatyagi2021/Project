import 'package:bloc/bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'login_event.dart';
import 'login_state.dart';



class LoginBloc extends Bloc<LoginEvent, LoginState>{
  LoginBloc() : super(LoginState.onInit());


//   @override
//   Stream<LoginState> mapEventToState(LoginEvent event) async*{
//
//
// }

@override
  Stream<LoginState> mapEventToState(LoginEvent event) async*{

  if(event is EmailEvent){
    if(event.email.isNotEmpty && event.email.contains('@')){
      yield LoginState.onEmail(true);
    }else{
      yield LoginState.onEmail(false);
    }
  }

  else if(event is PasswordEvent){
    if(event.password.isNotEmpty && event.password.length>6){
      print('fghjkjhgfdfghjk' + state.isEmailValid.toString());
      yield LoginState.onPassword(state,  true, state.isEmailValid);

    }else{
      yield LoginState.onPassword(state,  false, state.isEmailValid);
    }
  }

  else if(event is OnLoginEvent){
    yield LoginState.onLogin(state, true);
  }

  else{
    Fluttertoast.showToast(msg: "There is something wrong",toastLength: Toast.LENGTH_SHORT);
  }
}

  }

