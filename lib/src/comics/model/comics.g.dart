// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseComics _$BaseResponseComicsFromJson(Map<String, dynamic> json) =>
    BaseResponseComics(
      status: json['status'] as String,
      code: json['code'] as int,
      data: json['data'] == null
          ? null
          : ResponseComics.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BaseResponseComicsToJson(BaseResponseComics instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'data': instance.data,
    };

ResponseComics _$ResponseComicsFromJson(Map<String, dynamic> json) =>
    ResponseComics(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Comic.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResponseComicsToJson(ResponseComics instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

Comic _$ComicFromJson(Map<String, dynamic> json) => Comic(
      id: json['id'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      thumbnail: json['thumbnail'] == null
          ? null
          : Thumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ComicToJson(Comic instance) => <String, dynamic>{
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
