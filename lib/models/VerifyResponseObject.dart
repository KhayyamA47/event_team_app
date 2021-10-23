class VerifyResponseObject {
  int code;
  String message;
  Body body;

  VerifyResponseObject({this.code, this.message, this.body});

  VerifyResponseObject.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    body = json['body'] != null ? new Body.fromJson(json['body']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['message'] = this.message;
    if (this.body != null) {
      data['body'] = this.body.toJson();
    }
    return data;
  }

  @override
  String toString() {
    return 'VerifyResponseObject{code: $code, message: $message, body: $body}';
  }
}

class Body {
  String userId;
  String token;

  Body({this.userId, this.token});

  Body.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['token'] = this.token;
    return data;
  }

  @override
  String toString() {
    return 'Body{userId: $userId, token: $token}';
  }
}
