import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'subject.g.dart';

@JsonSerializable()
class Subject with EquatableMixin {
  int userId;
  String userUuid;
  DateTime accessTokenExpiresAt;
  String lastName;
  String firstName;
  String fullName;
  String email;
  String role;
  bool isAdmin;
  List<String> consoleRoles;

  Subject({
    required this.userId,
    required this.userUuid,
    required this.accessTokenExpiresAt,
    required this.lastName,
    required this.firstName,
    required this.fullName,
    required this.email,
    required this.role,
    required this.isAdmin,
    required this.consoleRoles,
  });

  factory Subject.fromJson(Map<String, dynamic> json) =>
      _$SubjectFromJson(json);

  Map<String, dynamic> toJson() => _$SubjectToJson(this);

  @override
  List<Object?> get props => [
        userId,
        userUuid,
        accessTokenExpiresAt,
        lastName,
        firstName,
        fullName,
        email,
        role,
        isAdmin,
        consoleRoles,
      ];
}
