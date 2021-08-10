import 'dart:convert';

ModeloUsuario modeloTourFromJson(String str) =>
    ModeloUsuario.fromJson(json.decode(str));

String modeloTourToJson(ModeloUsuario data) => json.encode(data.toJson());

class ModeloUsuario {
  ModeloUsuario({
    required this.id,
    required this.picture,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
    required this.password,
  });

  int id;
  String picture;
  String firstName;
  String lastName;
  String email;
  String phone;
  String password;

  factory ModeloUsuario.fromJson(Map<String, dynamic> json) => ModeloUsuario(
        id: json["id"],
        picture: json["picture"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        email: json["email"],
        phone: json["phone"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "picture": picture,
        "firstName": firstName,
        "lastName": lastName,
        "email": email,
        "phone": phone,
        "password": password,
      };
}
