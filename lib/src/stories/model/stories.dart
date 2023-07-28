import 'package:json_annotation/json_annotation.dart';

part 'stories.g.dart';

@JsonSerializable()
class BaseResponseStories {
  String status;
  int code;
  ResponseStories? data;

  BaseResponseStories({required this.status, required this.code, this.data});

  factory BaseResponseStories.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseStoriesFromJson(json);

  Map<String, dynamic> toJson() => _$BaseResponseStoriesToJson(this);
}

@JsonSerializable()
class ResponseStories {
  List<Storie>? results;

  ResponseStories({this.results});

  factory ResponseStories.fromJson(Map<String, dynamic> json) =>
      _$ResponseStoriesFromJson(json);

  Map<String, dynamic> toJson() => _$ResponseStoriesToJson(this);
}

@JsonSerializable()
class Storie {
  int? id;
  String? title;
  String? description;
  Thumbnail? thumbnail;

  Storie({this.id, this.title, this.description, this.thumbnail});

  factory Storie.fromJson(Map<String, dynamic> json) => _$StorieFromJson(json);

  Map<String, dynamic> toJson() => _$StorieToJson(this);
}

@JsonSerializable()
class Thumbnail {
  String? path;
  String? extension;

  Thumbnail({this.path, this.extension});

  factory Thumbnail.fromJson(Map<String, dynamic> json) =>
      _$ThumbnailFromJson(json);

  Map<String, dynamic> toJson() => _$ThumbnailToJson(this);
}
