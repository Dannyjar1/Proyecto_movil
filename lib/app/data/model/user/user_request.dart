class UserRequest {
  String idUser;
  String name;
  String phoneNumber;
  String email;
  String image;

  UserRequest({
    required this.idUser,
    required this.name,
    required this.phoneNumber,
    required this.email,
    required this.image,
  });

  Map<String, dynamic> toJson() {
    return {
      'idUser': idUser,
      'name': name,
      'phoneNumber': phoneNumber,
      'email': email,
      'profile': image,
    };
  }
}
