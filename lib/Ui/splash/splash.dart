import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/Ui/login/login_bloc.dart';
import 'package:project/Ui/login/login_view.dart';


void main() { runApp(MyApp());}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}
class SplashScreenState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => BlocProvider<LoginBloc>(
                  create: (context)=> LoginBloc(),child: Login(), )
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(

        height: double.infinity,
        width: double.infinity,
        child:Image.asset('assets/images/cl.jpeg',fit: BoxFit.cover,)
    );
  }
}