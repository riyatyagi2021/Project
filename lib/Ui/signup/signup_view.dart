import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/Ui/login/login_view.dart';


class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 750,
          width: 360,
          child: Container(
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
                        padding: const EdgeInsets.only(top: 100.0),
                        child: Text('Register Here',style: TextStyle(
                            fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black
                        ),),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 50,vertical: 50),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Email',
                            hintText: 'Enter Your Email',
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 50,vertical: 5),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Password',
                            hintText: 'Enter Your Password',
                          ),
                        ),
                      ),
                          Container(
                            margin: EdgeInsets.fromLTRB(30,60,30,10),
                            child: RaisedButton(
                              textColor: Colors.white,
                              color: Colors.blueGrey,
                              child: Text('SignUp'),
                             // onPressed: null,
                               onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Login()),
                              );
                            },
                            ),
                          ),


                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


