part of 'application_bloc.dart';


abstract class ApplicationEvent {
const  ApplicationEvent();

}
class ApplicationTAbEVent extends ApplicationEvent{
  final int index;
  ApplicationTAbEVent({required this.index});

}

