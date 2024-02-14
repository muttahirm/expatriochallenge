import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'german_address.g.dart';

@JsonSerializable()
class GermanAddress with EquatableMixin {
  String streetName;
  String streetNumber;
  String postalCode;
  String city;
  String coAddress;
  String countryCode;
  String state;
  String province;
  String district;

  GermanAddress({
    required this.streetName,
    required this.streetNumber,
    required this.postalCode,
    required this.city,
    required this.coAddress,
    required this.countryCode,
    required this.state,
    required this.province,
    required this.district,
  });

  factory GermanAddress.fromJson(Map<String, dynamic> json) =>
      _$GermanAddressFromJson(json);

  Map<String, dynamic> toJson() => _$GermanAddressToJson(this);

  @override
  List<Object?> get props => [
        streetName,
        streetNumber,
        postalCode,
        city,
        coAddress,
        countryCode,
        state,
        province,
        district,
      ];
}
