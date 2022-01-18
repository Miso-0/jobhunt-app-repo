// ignore_for_file: non_constant_identifier_names, file_names

class User {
  late String id;
  late String name;
  String? Surname;

  late String UserType;
  String? website;
  String? imageUrl;
  late String password;

  User(
      {required this.id,
      required this.name,
      this.Surname,
      required this.UserType,
      this.website,
      this.imageUrl,
      required this.password});

  Map<String, dynamic> toMapIndividual() => {
        'id': id,
        'name': name,
        'surname': Surname,
        'usertype': UserType,
      };
}
