import 'package:json_annotation/json_annotation.dart';

part 'models.g.dart';

enum Gender { male, female, other }

@JsonSerializable()
class Name {
  final String title;
  final String first;
  final String last;

  Name(this.title, this.first, this.last);

  String get fullName => '$title $first $last';

  factory Name.fromJson(dynamic json) => _$NameFromJson(json);

  dynamic toJson() => _$NameToJson(this);
}

@JsonSerializable()
class Street {
  final num number;
  final String name;

  Street(this.number, this.name);

  factory Street.fromJson(dynamic json) => _$StreetFromJson(json);

  dynamic toJson() => _$StreetToJson(this);
}

@JsonSerializable()
class Location {
  final Street street;
  final String city;
  final String state;
  final String country;
  final dynamic postcode;

  Location(this.street, this.city, this.state, this.country, this.postcode);

  factory Location.fromJson(dynamic json) => _$LocationFromJson(json);

  dynamic toJson() => _$LocationToJson(this);
}

@JsonSerializable()
class Picture {
  final String large;
  final String medium;
  final String thumbnail;

  Picture(this.large, this.medium, this.thumbnail);

  factory Picture.fromJson(dynamic json) => _$PictureFromJson(json);

  dynamic toJson() => _$PictureToJson(this);
}

@JsonSerializable()
class User {
  final Gender gender;
  final Name name;
  final Location location;
  final String email;
  final String phone;
  final Picture picture;
  final String nat;

  User(this.gender, this.name, this.location, this.email, this.phone,
      this.picture, this.nat);

  factory User.fromJson(dynamic json) => _$UserFromJson(json);

  dynamic toJson() => _$UserToJson(this);
}
