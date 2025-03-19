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