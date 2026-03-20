import '6-password.dart';

// Using inheritance to create a User class that extends the Password class
class User extends Password{
  int id = 0;
  String name = '';
  int age = 0;
  double height = 0.0;

  // Using super() to call the parent constructor
  User({
    this.id = 0,
    this.name = '',
    this.age = 0,
    this.height = 0.0,
    String user_password = '',
    }) : super(password: user_password);

  String get user_password => password;
  set user_password(String value) => password = value;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  static User fromJson(Map<dynamic, dynamic> userJson) 
  {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
      user_password: userJson['user_password'],
    );
  }

  @override
  String toString() 
  {
    return 'User(id : $id ,name: $name, age: $age, height: $height, Password: ${isValid()})';
  }
}
