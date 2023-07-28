// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stories.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseStories _$BaseResponseStoriesFromJson(Map<String, dynamic> json) =>
    BaseResponseStories(
      status: json['status'] as String,
      code: json['code'] as int,
      data: json['data'] == null
          ? null
          : ResponseStories.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BaseResponseStoriesToJson(
        BaseResponseStories instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'data': instance.data,
    };

ResponseStories _$ResponseStoriesFromJson(Map<String, dynamic> json) =>
    ResponseStories(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Storie.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResponseStoriesToJson(ResponseStories instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

Storie _$StorieFromJson(Map<String, dynamic> json) => Storie(
      id: json['id'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      thumbnail: json['thumbnail'] == null
          ? null
          : Thumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StorieToJson(Storie instance) => <String, dynamic>{
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
