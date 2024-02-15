import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'foreign_address.g.dart';

@JsonSerializable()
class ForeignAddress with EquatableMixin {
  String streetName;
  String streetNumber;
  String postalCode;
  String city;
  String coAddress;
  String countryCode;
  String state;
  String province;
  String district;

  ForeignAddress({
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

  factory ForeignAddress.fromJson(Map<String, dynamic> json) =>
      _$ForeignAddressFromJson(json);

  Map<String, dynamic> toJson() => _$ForeignAddressToJson(this);

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
