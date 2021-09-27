import 'package:bloc/bloc.dart';
import 'event.dart';



  class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0);
  @override
  int get initialState => 0;


  @override
  Stream<int> mapEventToState(CounterEvent event) async*{
    switch (event) {
      case CounterEvent.increment:
        yield state + 1;
        break;
    }
  }


}