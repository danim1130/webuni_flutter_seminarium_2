// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Name _$NameFromJson(Map<String, dynamic> json) => Name(
      json['title'] as String,
      json['first'] as String,
      json['last'] as String,
    );

Map<String, dynamic> _$NameToJson(Name instance) => <String, dynamic>{
      'title': instance.title,
      'first': instance.first,
      'last': instance.last,
    };

Street _$StreetFromJson(Map<String, dynamic> json) => Street(
      json['number'] as num,
      json['name'] as String,
    );

Map<String, dynamic> _$StreetToJson(Street instance) => <String, dynamic>{
      'number': instance.number,
      'name': instance.name,
    };

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      Street.fromJson(json['street']),
      json['city'] as String,
      json['state'] as String,
      json['country'] as String,
      json['postcode'],
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'street': instance.street,
      'city': instance.city,
      'state': instance.state,
      'country': instance.country,
      'postcode': instance.postcode,
    };

Picture _$PictureFromJson(Map<String, dynamic> json) => Picture(
      json['large'] as String,
      json['medium'] as String,
      json['thumbnail'] as String,
    );

Map<String, dynamic> _$PictureToJson(Picture instance) => <String, dynamic>{
      'large': instance.large,
      'medium': instance.medium,
      'thumbnail': instance.thumbnail,
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
      $enumDecode(_$GenderEnumMap, json['gender']),
      Name.fromJson(json['name']),
      Location.fromJson(json['location']),
      json['email'] as String,
      json['phone'] as String,
      Picture.fromJson(json['picture']),
      json['nat'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'gender': _$GenderEnumMap[instance.gender]!,
      'name': instance.name,
      'location': instance.location,
      'email': instance.email,
      'phone': instance.phone,
      'picture': instance.picture,
      'nat': instance.nat,
    };

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
  Gender.other: 'other',
};
