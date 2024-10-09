import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObserver extends BlocObserver{
  @override
  void onChange(BlocBase bloc, Change change) {
    log(change.toString());
    super.onChange(bloc, change);
  }
  @override
  void onCreate(BlocBase bloc) {
      log(bloc.state.toString());
    super.onCreate(bloc);
  }
  
  @override
  void onTransition(Bloc bloc, Transition transition) {
    log(transition.toString());
    super.onTransition(bloc, transition);
  }
  
  @override
  void onEvent(Bloc bloc, Object? event) {
    log(event.toString());
    super.onEvent(bloc, event);
  }
}