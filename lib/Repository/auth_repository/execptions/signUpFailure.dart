class SignUpWithEmailandPasswordFailure {
  final String message;

  SignUpWithEmailandPasswordFailure(
      [this.message = 'An Unknown error occurred']);

  factory SignUpWithEmailandPasswordFailure.code(String code) {
    switch (code) {
      case 'weak-password':
        return SignUpWithEmailandPasswordFailure(
            'Please enter a strong password');
      case 'invalid-email':
        return SignUpWithEmailandPasswordFailure('This Email is invalid');
      case 'email-already-in-use':
        return SignUpWithEmailandPasswordFailure(
            'An account already exists for this email');
      default:
        return SignUpWithEmailandPasswordFailure();
    }
  }
}
