class Users {
  String? id;
  String? email;
  String? password;
  String? phoneNumber;
  String? name;
  String? role;
  bool? isConfirmed;

  Users(
      {this.id,
      this.email,
      this.password,
      this.phoneNumber,
      this.name,
      this.role,
      this.isConfirmed});

  Users.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    password = json['password'];
    phoneNumber = json['phoneNumber'];
    name = json['name'];
    role = json['role'];
    isConfirmed = json['isConfirmed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['email'] = this.email;
    data['password'] = this.password;
    data['phoneNumber'] = this.phoneNumber;
    data['name'] = this.name;
    data['role'] = this.role;
    data['isConfirmed'] = this.isConfirmed;
    return data;
  }
}
