class NewsAppModel {
  final int userId;
  final int id;
  final String title;
  final String body;

  const NewsAppModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory NewsAppModel.fromJson(Map<String, dynamic> json) {
    return NewsAppModel(
      userId: json['userId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
      body: json['body'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {'userId': userId, 'id': id, 'title': title, 'body': body};
  }
}
