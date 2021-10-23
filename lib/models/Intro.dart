class Intro {
  int code;
  String message;
  List<Blocks> blocks;

  Intro({this.code, this.message, this.blocks});

  Intro.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    if (json['blocks'] != null) {
      blocks = new List<Blocks>();
      json['blocks'].forEach((v) {
        blocks.add(new Blocks.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['message'] = this.message;
    if (this.blocks != null) {
      data['blocks'] = this.blocks.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Blocks {
  int id;
  String title;
  String icon;
  String text;
  String link;

  Blocks({this.id, this.title, this.icon, this.text, this.link});

  Blocks.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    icon = json['icon'];
    text = json['text'];
    link = json['link'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['icon'] = this.icon;
    data['text'] = this.text;
    data['link'] = this.link;
    return data;
  }
}
