/*

* Purpose: Define the state of your app. The state represents the data that your 
          UI depends on.

*What to Include:
  Create a state class that holds all the data your UI needs (e.g., CounterState).
  Optionally, add a copyWith method to make it easier to update specific fields in the state.



*/

class CounterState {
  final int count;
  final String username;
  final String password;
  final bool isPasswordVisible;

  CounterState({
    required this.count,
    this.username = '',
    this.password = '',
    this.isPasswordVisible = false,
  });

  // Create a copyWith method to update specific fields
  CounterState copyWith({
    int? count,
    String? username,
    String? password,
    bool? isPasswordVisible,
  }) {
    return CounterState(
      count: count ?? this.count,
      username: username ?? this.username,
      password: password ?? this.password,
      isPasswordVisible: isPasswordVisible ?? this.isPasswordVisible,
    );
  }
}