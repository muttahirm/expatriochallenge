// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subject.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Subject _$SubjectFromJson(Map<String, dynamic> json) => Subject(
      userId: json['userId'] as int,
      userUuid: json['userUuid'] as String,
      accessTokenExpiresAt:
          DateTime.parse(json['accessTokenExpiresAt'] as String),
      lastName: json['lastName'] as String,
      firstName: json['firstName'] as String,
      fullName: json['fullName'] as String,
      email: json['email'] as String,
      role: json['role'] as String,
      isAdmin: json['isAdmin'] as bool,
      consoleRoles: (json['consoleRoles'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$SubjectToJson(Subject instance) => <String, dynamic>{
      'userId': instance.userId,
      'userUuid': instance.userUuid,
      'accessTokenExpiresAt': instance.accessTokenExpiresAt.toIso8601String(),
      'lastName': instance.lastName,
      'firstName': instance.firstName,
      'fullName': instance.fullName,
      'email': instance.email,
      'role': instance.role,
      'isAdmin': instance.isAdmin,
      'consoleRoles': instance.consoleRoles,
    };
