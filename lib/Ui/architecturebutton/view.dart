
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc.dart';
import 'event.dart';

/*void main() {
  runApp(MyApp());
}*/

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  BlocProvider<CounterBloc>(
              create: (context)=> CounterBloc(),child: MyHomePage(title: 'Architecture demo',)),
      /*Scaffold(
        body: BlocProvider(
          builder: (BuildContext context)=>CounterBloc(),
            child:CounterScreen()  )
    );*/
        );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);

    return Scaffold(
      appBar: AppBar(title: Text('BLoC Demo')),
      body: BlocBuilder<CounterBloc, int>(builder: (context, count) {
        return Center(
            child:
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text('$count', style: TextStyle(fontSize: 32.0)),
              RaisedButton(
                  child: Icon(Icons.add),
                  onPressed: () {
                    counterBloc.add(CounterEvent.increment);
                  }),
            ]));
      }),
    );
  }
}
