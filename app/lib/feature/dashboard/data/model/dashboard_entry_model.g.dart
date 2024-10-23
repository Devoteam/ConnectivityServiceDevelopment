// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_entry_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DashboardEntryModelImpl _$$DashboardEntryModelImplFromJson(Map<String, dynamic> json) => _$DashboardEntryModelImpl(
      id: (json['id'] as num).toInt(),
      category: json['category'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$DashboardEntryModelImplToJson(_$DashboardEntryModelImpl instance) => <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
    };
