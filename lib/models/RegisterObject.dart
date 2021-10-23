class RegisterObject {
  String login;
  String password;
  String gender;
  String birthday;
  String email;

  RegisterObject({this.login, this.password, this.gender, this.birthday, this.email});

  RegisterObject.fromJson(Map<String, dynamic> json) {
    login = json['login'];
    password = json['password'];
    gender = json['gender'];
    birthday = json['birthday'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['login'] = this.login;
    data['password'] = this.password;
    data['gender'] = this.gender;
    data['birthday'] = this.birthday;
    data['email'] = this.email;
    return data;
  }

  @override
  String toString() {
    return 'RegisterObject{login: $login, password: $password, gender: $gender, birthday: $birthday, email: $email}';
  }
}
