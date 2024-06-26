class Password {
  String _password = '';

  Password({required String password}) {
    _password = password;
  }

  bool isValid() {
    if (!(_password.length >= 8 && _password.length <= 16)) return false;
    if (!(_password.contains(RegExp(r'[A-Z]')) &&
        _password.contains(RegExp(r'[a-z]')))) return false;
    if (!_password.contains(RegExp(r'[0-9]'))) return false;
    return true;
  }

  @override
  String toString() {
    return 'Your Password is: $_password';
  }

  String get password {
    return this._password;
  }

  void set password(String password) {
    this._password = password;
  }
}
