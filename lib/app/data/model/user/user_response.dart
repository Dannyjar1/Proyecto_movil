class UserResponse {
  String idUser;
  String name;
  String phoneNumber;
  String email;
  String image;

  UserResponse({
    required this.idUser,
    required this.name,
    required this.phoneNumber,
    required this.email,
    required this.image,
  });

  factory UserResponse.fromJson(Map<String, dynamic> json) {
    return UserResponse(
      idUser: json['idUser'],
      name: json['name'],
      phoneNumber: json['phoneNumber'],
      email: json['email'],
      image: json['imageProfile']?.replaceAll('\n', '') ?? '',
    );
  }
}
