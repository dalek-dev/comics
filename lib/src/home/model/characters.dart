import 'package:json_annotation/json_annotation.dart';

part 'characters.g.dart';

@JsonSerializable()
class BaseResponseCharacters {
  String status;
  int code;
  ResponseCharacters? data;

  BaseResponseCharacters({required this.status, required this.code, this.data});

  factory BaseResponseCharacters.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseCharactersFromJson(json);

  Map<String, dynamic> toJson() => _$BaseResponseCharactersToJson(this);
}

@JsonSerializable()
class ResponseCharacters {
  List<Character>? results;

  ResponseCharacters({this.results});

  factory ResponseCharacters.fromJson(Map<String, dynamic> json) =>
      _$ResponseCharactersFromJson(json);

  Map<String, dynamic> toJson() => _$ResponseCharactersToJson(this);
}

@JsonSerializable()
class Character {
  int? id;
  String? name;
  String? description;
  Thumbnail? thumbnail;

  Character({this.id, this.name, this.description, this.thumbnail});

  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterToJson(this);
}

@JsonSerializable()
class Thumbnail {
  String? path;
  String? extension;

  Thumbnail({this.path, this.extension});

  factory Thumbnail.fromJson(Map<String, dynamic> json) =>
      _$ThumbnailFromJson(json);

  Map<String, dynamic> toJson() => _$ThumbnailToJson(this);

  factory Thumbnail.empty() {
    return Thumbnail(path: "", extension: "");
  }
}
