// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseEvents _$BaseResponseEventsFromJson(Map<String, dynamic> json) =>
    BaseResponseEvents(
      status: json['status'] as String,
      code: json['code'] as int,
      data: json['data'] == null
          ? null
          : ResponseEvents.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BaseResponseEventsToJson(BaseResponseEvents instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'data': instance.data,
    };

ResponseEvents _$ResponseEventsFromJson(Map<String, dynamic> json) =>
    ResponseEvents(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Event.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResponseEventsToJson(ResponseEvents instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

Event _$EventFromJson(Map<String, dynamic> json) => Event(
      id: json['id'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      thumbnail: json['thumbnail'] == null
          ? null
          : Thumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EventToJson(Event instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'thumbnail': instance.thumbnail,
    };

Thumbnail _$ThumbnailFromJson(Map<String, dynamic> json) => Thumbnail(
      path: json['path'] as String?,
      extension: json['extension'] as String?,
    );

Map<String, dynamic> _$ThumbnailToJson(Thumbnail instance) => <String, dynamic>{
      'path': instance.path,
      'extension': instance.extension,
    };
