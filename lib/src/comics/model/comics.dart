import 'package:json_annotation/json_annotation.dart';

part 'comics.g.dart';

@JsonSerializable()
class BaseResponseComics {
  String status;
  int code;
  ResponseComics? data;

  BaseResponseComics({required this.status, required this.code, this.data});

  factory BaseResponseComics.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseComicsFromJson(json);

  Map<String, dynamic> toJson() => _$BaseResponseComicsToJson(this);
}

@JsonSerializable()
class ResponseComics {
  List<Comic>? results;

  ResponseComics({this.results});

  factory ResponseComics.fromJson(Map<String, dynamic> json) =>
      _$ResponseComicsFromJson(json);

  Map<String, dynamic> toJson() => _$ResponseComicsToJson(this);
}

@JsonSerializable()
class Comic {
  int? id;
  String? title;
  String? description;
  Thumbnail? thumbnail;

  Comic({this.id, this.title, this.description, this.thumbnail});

  factory Comic.fromJson(Map<String, dynamic> json) => _$ComicFromJson(json);

  Map<String, dynamic> toJson() => _$ComicToJson(this);
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
