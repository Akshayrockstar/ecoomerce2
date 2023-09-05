import 'package:eccommerce2/blocs/events.dart';
import 'package:eccommerce2/blocs/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBloc extends Bloc<AppEvents,AppState>{
  AppBloc ():super(initState()){
on<incrementEvent>((event,sa){
    emit(AppState(counter:state.counter+1 ));
  });
on<decrememtEvent>((event,sa){
  emit(AppState(counter:state.counter-1 ));
});


}
}