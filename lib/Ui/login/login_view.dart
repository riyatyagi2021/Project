import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project/Ui/home/home_view.dart';
import 'package:project/Ui/login/login_bloc.dart';
import 'package:project/Ui/login/login_event.dart';
import 'package:project/Ui/login/login_state.dart';
import 'package:project/Ui/signup/signup_view.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  @override
  _LoginState createState() => _LoginState();
}




class _LoginState extends State<Login> {


  gotoHomepage(){
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Home()),
    );
  }



  @override
  Widget build(BuildContext context) {
    final LoginBloc loginbloc=BlocProvider.of<LoginBloc>(context);
    return Scaffold(
      body: BlocBuilder<LoginBloc, LoginState>(

          builder: (context,state){
        if(state.isSuccess){
          Fluttertoast.showToast(msg: "successful",toastLength: Toast.LENGTH_SHORT);
        }
        return Center(
          child: Container(
            height: 750,
            width: 360,
            color: Colors.grey,
            child: Container(
             // color: Colors.blueGrey,
              margin: EdgeInsets.fromLTRB(20, 80, 20, 60),
              height: 200,
              width: 260,
              child: Card(
                elevation: 5,
                child: ListView(
                  children:[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 70.0),
                          child: Text('Login Here',style: TextStyle(
                              fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black
                          ),),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 50,vertical: 50),
                          child: TextField(
                           onChanged: (String email) => loginbloc.add(EmailEvent(email)),

                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                               // borderRadius: BorderRadius.circular(20),
                              ),
                              labelText: 'Email',
                              hintText: 'Enter Your Email',
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 50,vertical: 5),
                          child: TextField(
                            onChanged: (String password) => loginbloc.add(PasswordEvent(password)),
                            onSubmitted: (_){},
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Password',
                              hintText: 'Enter Your Password',
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(60,60,10,10),
                              child: RaisedButton(
                                textColor: Colors.white,
                                color: Colors.blue,
                                child: Text('Login'),
                               onPressed: state.isSuccess ? gotoHomepage : null,

                               /* onPressed: (){
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(builder: (context) => Home()),
                                  );
                                },*/
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(30,60,10,10),
                              child: RaisedButton(
                                textColor: Colors.white,
                                color: Colors.blue,
                                child: Text('Sign Up'),
                                onPressed: (){
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(builder: (context) => SignUp()),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      })
    );
  }
}
