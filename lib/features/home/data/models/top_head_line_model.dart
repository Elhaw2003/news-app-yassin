class TopHeadLineModel {
  final String imageUrl;
  final String title;
  final String author;
  final String description;
  final String content;
  final DateTime? publishedAt; // Make this nullable
  final SourceModel sourceModel;

  TopHeadLineModel({
    required this.imageUrl,
    required this.author,
    required this.description,
    required this.content,
    required this.publishedAt,
    required this.title,
    required this.sourceModel,
  });

  factory TopHeadLineModel.fromJson(Map<String, dynamic> json) {
    return TopHeadLineModel(
      imageUrl: json["urlToImage"] ?? "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7x-ooxKOq566-LbXBxqJiyOR-jgzYDfMx7w&s",
      author: json["author"] ?? "Unknown",
      description: json["description"] ?? "No description available", // Handle null
      content: json["content"] ?? "No content available", // Handle null
      publishedAt: json["publishedAt"] != null
          ? DateTime.tryParse(json["publishedAt"])
          : null, // Handle null safely
      title: json["title"] ?? "No title",
      sourceModel: SourceModel.fromJson(json["source"] ?? {}), // Handle null source
    );
  }
}

class SourceModel {
  final String name;

  SourceModel({required this.name});

  factory SourceModel.fromJson(Map<String, dynamic> json) {
    return SourceModel(
      name: json["name"] ?? "Unknown Source", // Provide default value
    );
  }
}