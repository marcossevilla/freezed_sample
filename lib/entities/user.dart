import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed

/// Represents a User
abstract class User with _$User {
  /// Base constructor
  @Assert('name.isNotEmpty', 'name cannot be empty')
  @Assert('age >= 0')
  factory User({@required String name, @required int age}) = _User;

  /// `fromJson` constructor
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
