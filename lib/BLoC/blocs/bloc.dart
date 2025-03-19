/*
 * Purpose: Handle the business logic of your app. The BLoC listens for events, 
     processes them, and emits new states.
 
 * What to Include:

  Create a Bloc class that extends Bloc<Event, State>.
  Register event handlers using the on<Event> method.
  Use emit to produce new states based on the events.
 
 */

import 'package:bloc/bloc.dart';
import 'package:statemanagement/BLoC/events/event.dart';
import 'package:statemanagement/BLoC/states/state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(count: 0)) {
    on<IncrementEvent>((event, emit) {
      emit(state.copyWith(count: state.count + 1));
    });

    on<UpdateUsernameEvent>((event, emit) {
      emit(state.copyWith(username: event.username));
    });

    on<UpdatePasswordEvent>((event, emit) {
      emit(state.copyWith(password: event.password));
    });

    on<TogglePasswordVisibilityEvent>((event, emit) {
      emit(state.copyWith(isPasswordVisible: !state.isPasswordVisible));
    });
  }
}