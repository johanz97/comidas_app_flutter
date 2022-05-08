// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_serializer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductSerializer _$$_ProductSerializerFromJson(Map<String, dynamic> json) =>
    _$_ProductSerializer(
      id: json['id'] as String,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      images: (json['images'] as List<dynamic>)
          .map(
              (e) => ProductImageSerializer.fromJson(e as Map<String, dynamic>))
          .toList(),
      value: (json['value'] as num).toDouble(),
      place: json['place'] as String,
      description: json['description'] as String,
      time: json['time'] as int,
    );

Map<String, dynamic> _$$_ProductSerializerToJson(
        _$_ProductSerializer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'images': instance.images.map((e) => e.toJson()).toList(),
      'value': instance.value,
      'place': instance.place,
      'description': instance.description,
      'time': instance.time,
    };
