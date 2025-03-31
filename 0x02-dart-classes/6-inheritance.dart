import '6-password.dart';

class User extends Password {
  int id;
  String name;
  int age;
  double height;
  String? user_password;

  User({
    required this.id,
    required this.name,
    required this.age,
    required this.height,
    String? user_password,
  }) : super(password: user_password ?? "") {
    this.user_password = user_password;
  }

  @override
  String toString() {
    bool passwordValid = isValid();
    return "User(id : $id, name: $name, age: $age, height: $height, Password: $passwordValid)";
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
      'user_password': user_password,
    };
  }

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      age: json['age'],
      height: json['height'],
      user_password: json['user_password'],
    );
  }
}
