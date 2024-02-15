// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'german_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GermanAddress _$GermanAddressFromJson(Map<String, dynamic> json) =>
    GermanAddress(
      streetName: json['streetName'] as String,
      streetNumber: json['streetNumber'] as String,
      postalCode: json['postalCode'] as String,
      city: json['city'] as String,
      coAddress: json['coAddress'] as String,
      countryCode: json['countryCode'] as String,
      state: json['state'] as String,
      province: json['province'] as String,
      district: json['district'] as String,
    );

Map<String, dynamic> _$GermanAddressToJson(GermanAddress instance) =>
    <String, dynamic>{
      'streetName': instance.streetName,
      'streetNumber': instance.streetNumber,
      'postalCode': instance.postalCode,
      'city': instance.city,
      'coAddress': instance.coAddress,
      'countryCode': instance.countryCode,
      'state': instance.state,
      'province': instance.province,
      'district': instance.district,
    };
