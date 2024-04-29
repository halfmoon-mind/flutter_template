import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  final int id;
  final String name;

  User({
    required this.id,
    required this.name,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  // copywith
  User copyWith({
    int? id,
    String? name,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }
}
