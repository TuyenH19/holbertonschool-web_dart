class User {
  int id = 0;
  String name = '';
  int age = 0;
  double height = 0.0;

  User({this.id = 0, this.name = '', this.age = 0, this.height = 0.0});

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
      id: userJson['id'] ?? 0,
      name: userJson['name'] ?? '',
      age: userJson['age'] ?? 0,
      height: userJson['height'] ?? 0.0,
    );
  }

  @override
  String toString() 
  {
    return 'User(id: $id, name: $name, age: $age, height: $height)';
  }
}
