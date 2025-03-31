class Password {
  String _password = "";

  Password({required String password}) : _password = password;

  bool isValid() {
    return _password.length >= 8 &&
        RegExp(r'[A-Z]').hasMatch(_password) &&
        RegExp(r'[a-z]').hasMatch(_password) &&
        RegExp(r'\d').hasMatch(_password);
  }

  @override
  String toString() {
    return "Your Password is: $_password";
  }

  set password(String newPassword) {
    _password = newPassword;
  }

  String get password {
    return _password;
  }
}
