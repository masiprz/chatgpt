class ChatModel {
  String? text;

  ChatModel({required this.text});

  Map<String, dynamic> toJson() {
    return {
      'text': text,
    };
  }

  ChatModel.fromJson(Map<String, dynamic> json) : text = json['text'];
}
