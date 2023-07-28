// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'characters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseCharacters _$BaseResponseCharactersFromJson(
        Map<String, dynamic> json) =>
    BaseResponseCharacters(
      status: json['status'] as String,
      code: json['code'] as int,
      data: json['data'] == null
          ? null
          : ResponseCharacters.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BaseResponseCharactersToJson(
        BaseResponseCharacters instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'data': instance.data,
    };

ResponseCharacters _$ResponseCharactersFromJson(Map<String, dynamic> json) =>
    ResponseCharacters(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Character.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResponseCharactersToJson(ResponseCharacters instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

Character _$CharacterFromJson(Map<String, dynamic> json) => Character(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      thumbnail: json['thumbnail'] == null
          ? null
          : Thumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CharacterToJson(Character instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
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
