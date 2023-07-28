import 'package:json_annotation/json_annotation.dart';

part 'series.g.dart';

@JsonSerializable()
class BaseResponseSeries {
  String status;
  int code;
  ResponseSeries? data;

  BaseResponseSeries({required this.status, required this.code, this.data});

  factory BaseResponseSeries.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseSeriesFromJson(json);

  Map<String, dynamic> toJson() => _$BaseResponseSeriesToJson(this);
}

@JsonSerializable()
class ResponseSeries {
  List<Serie>? results;

  ResponseSeries({this.results});

  factory ResponseSeries.fromJson(Map<String, dynamic> json) =>
      _$ResponseSeriesFromJson(json);

  Map<String, dynamic> toJson() => _$ResponseSeriesToJson(this);
}

@JsonSerializable()
class Serie {
  int? id;
  String? title;
  String? description;
  Thumbnail? thumbnail;

  Serie({this.id, this.title, this.description, this.thumbnail});

  factory Serie.fromJson(Map<String, dynamic> json) => _$SerieFromJson(json);

  Map<String, dynamic> toJson() => _$SerieToJson(this);
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
