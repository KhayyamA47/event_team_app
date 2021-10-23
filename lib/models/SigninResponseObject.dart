class SignInObject {
  String login;
  String password;

  SignInObject({this.login, this.password});

  SignInObject.fromJson(Map<String, dynamic> json) {
    login = json['login'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['login'] = this.login;
    data['password'] = this.password;
    return data;
  }

  @override
  String toString() {
    return 'SignInObject{login: $login, password: $password}';
  }
}
