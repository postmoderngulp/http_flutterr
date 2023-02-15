class UserModel {
  late String email;
  late String name;
  late String password;

  UserModel({required this.email, required this.name, required this.password});

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
      email: json['email'], name: json['username'], password: json['password']);

  Map<String, dynamic> toJson()  =>   {
    "email" : email,
    "username" : name,
    "password" : password
  };
}
