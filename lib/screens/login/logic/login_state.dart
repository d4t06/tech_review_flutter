class LoginState {
  final bool isFetching;
  final String? errorMessage;

  const LoginState({
    this.isFetching = false,
    this.errorMessage,
  });

  LoginState copyWith({
    bool? isFetching,
    String? errorMessage,
  }) {
    return LoginState(
      isFetching: isFetching ?? this.isFetching,
      errorMessage: errorMessage,
    );
  }
}