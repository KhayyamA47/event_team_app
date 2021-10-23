class RegisterResponseObject {
  int code;
  String message;
  String body;

  RegisterResponseObject({this.code, this.message, this.body});

  RegisterResponseObject.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['message'] = this.message;
    data['body'] = this.body;
    return data;
  }

  @override
  String toString() {
    return 'RegisterResponseObject{code: $code, message: $message, body: $body}';
  }
}
