// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseSeries _$BaseResponseSeriesFromJson(Map<String, dynamic> json) =>
    BaseResponseSeries(
      status: json['status'] as String,
      code: json['code'] as int,
      data: json['data'] == null
          ? null
          : ResponseSeries.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BaseResponseSeriesToJson(BaseResponseSeries instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'data': instance.data,
    };

ResponseSeries _$ResponseSeriesFromJson(Map<String, dynamic> json) =>
    ResponseSeries(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Serie.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResponseSeriesToJson(ResponseSeries instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

Serie _$SerieFromJson(Map<String, dynamic> json) => Serie(
      id: json['id'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      thumbnail: json['thumbnail'] == null
          ? null
          : Thumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SerieToJson(Serie instance) => <String, dynamic>{
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
