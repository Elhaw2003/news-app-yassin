class TopHeadLineModel {
  final String imageUrl;
  final String title;
  final String author;
  final String description;
  final String content;
  final DateTime publishedAt;
  final SourceModel sourceModel;
  TopHeadLineModel(
      {required this.imageUrl,
      required this.author,
      required this.description,
      required this.content,
      required this.publishedAt,
      required this.title,
      required this.sourceModel});

  factory TopHeadLineModel.fromJson(Map<String, dynamic> json) {
    return TopHeadLineModel(
        imageUrl: json["urlToImage"],
        author: json["author"],
        description: json["description"],
        content: json["content"],
        publishedAt: json["publishedAt"],
        title: json["title"],
        sourceModel: SourceModel(name: json["name"])
    );
  }
}

class SourceModel {
  final String name;
  SourceModel({required this.name});
}
