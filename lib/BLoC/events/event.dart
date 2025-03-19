/*
  *Purpose: Define the events that can occur in your app. Events represent user 
  actions or other triggers that cause the state to change.
*/


abstract class CounterEvent {}

class IncrementEvent extends CounterEvent {}

class UpdateUsernameEvent extends CounterEvent {
  final String username;
  UpdateUsernameEvent(this.username);
}

class UpdatePasswordEvent extends CounterEvent {
  final String password;
  UpdatePasswordEvent(this.password);
}

class TogglePasswordVisibilityEvent extends CounterEvent {}