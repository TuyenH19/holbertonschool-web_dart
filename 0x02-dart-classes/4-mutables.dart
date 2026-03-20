
class Password {

  String _password = "";

  // Create Constructor in order to use it outside of the file
  Password({required String password}) : _password = password;

  // Getter - read _password from outside (expose _password as a readable property named password)
  String get password => _password;

  // Setter - write _password from outside
  set password(String value) => _password = value;

  bool isValid() 
  {
    if (_password.length < 8 || _password.length > 16) return false;
    if (!RegExp(r'[A-Z]').hasMatch(_password)) return false;
    if (!RegExp(r'[a-z]').hasMatch(_password)) return false;
    if (!RegExp(r'[0-9]').hasMatch(_password)) return false;
    return true;
  }

  @override
  String toString() {
    return 'Your Password is: $_password';
  }
}
