import 'package:json_annotation/json_annotation.dart';

part 'events.g.dart';

@JsonSerializable()
class BaseResponseEvents {
  String status;
  int code;
  ResponseEvents? data;

  BaseResponseEvents({required this.status, required this.code, this.data});

  factory BaseResponseEvents.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseEventsFromJson(json);

  Map<String, dynamic> toJson() => _$BaseResponseEventsToJson(this);
}

@JsonSerializable()
class ResponseEvents {
  List<Event>? results;

  ResponseEvents({this.results});

  factory ResponseEvents.fromJson(Map<String, dynamic> json) =>
      _$ResponseEventsFromJson(json);

  Map<String, dynamic> toJson() => _$ResponseEventsToJson(this);
}

@JsonSerializable()
class Event {
  int? id;
  String? title;
  String? description;
  Thumbnail? thumbnail;

  Event({this.id, this.title, this.description, this.thumbnail});

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);

  Map<String, dynamic> toJson() => _$EventToJson(this);
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
