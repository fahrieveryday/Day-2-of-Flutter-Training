class Article {
  Article({
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  Source source;
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  DateTime publishedAt;
  String content;

  factory Article.fromJson(Map<String, dynamic> json) => Article(
        source: Source.fromJson(json["source"]),
        author: json["author"] ?? 'anonim',
        title: json["title"],
        description: json["description"] ?? 'unknown',
        url: json["url"],
        urlToImage: json["urlToImage"] ??
            'https://pertaniansehat.com/v01/wp-content/uploads/2015/08/default-placeholder.png',
        publishedAt: DateTime.parse(
            json["publishedAt"] ?? DateTime.now().toIso8601String()),
        content: json["content"] ?? 'unknown',
      );
}

class Source {
  Source({
    this.id,
    this.name,
  });

  String? id;
  String? name;

  factory Source.fromJson(Map<String, dynamic> json) => Source(
        id: json["id"] ?? 'unknown',
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id ?? 'unknown',
        "name": name,
      };
}
