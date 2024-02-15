// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:login/domain/entities/foreign_address.dart';
import 'package:login/domain/entities/german_address.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse with EquatableMixin {
  int id;
  String dateOfBirth;
  String title;
  String firstName;
  String lastName;
  String profession;
  String nationality;
  String emailAddress;
  String beginOfStudy;
  String phoneCountryCode;
  String phoneNumber;
  String birthPlace;
  String birthCountry;
  GermanAddress germanAddress;
  ForeignAddress foreignAddress;
  String arrivalInGermany;
  String universityName;
  String universityCampus;
  String notListedUniversity;
  String specialization;
  String notListedSpecialization;
  String? visaStartDate;
  String? taxId;
  bool taxDataUpdatable;
  bool newTaxDataUpdatable;
  bool showAdditionalQuestions;
  bool showInterestMajor;
  List<String> interestIndustry;
  List<String> interestMajor;
  String? germanLevel;
  List<String> preferredGermanCity;
  List<String> preferredSocialMediaConnections;
  List<String> interestTopics;
  List<String> interestSocialIssues;

  LoginResponse({
    required this.id,
    required this.dateOfBirth,
    required this.title,
    required this.firstName,
    required this.lastName,
    required this.profession,
    required this.nationality,
    required this.emailAddress,
    required this.beginOfStudy,
    required this.phoneCountryCode,
    required this.phoneNumber,
    required this.birthPlace,
    required this.birthCountry,
    required this.germanAddress,
    required this.foreignAddress,
    required this.arrivalInGermany,
    required this.universityName,
    required this.universityCampus,
    required this.notListedUniversity,
    required this.specialization,
    required this.notListedSpecialization,
    this.visaStartDate,
    this.taxId,
    required this.taxDataUpdatable,
    required this.newTaxDataUpdatable,
    required this.showAdditionalQuestions,
    required this.showInterestMajor,
    required this.interestIndustry,
    required this.interestMajor,
    this.germanLevel,
    required this.preferredGermanCity,
    required this.preferredSocialMediaConnections,
    required this.interestTopics,
    required this.interestSocialIssues,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);

  @override
  List<Object?> get props => [
        id,
        dateOfBirth,
        title,
        firstName,
        lastName,
        profession,
        nationality,
        emailAddress,
        beginOfStudy,
        phoneCountryCode,
        phoneNumber,
        birthPlace,
        birthCountry,
        germanAddress,
        foreignAddress,
        arrivalInGermany,
        universityName,
        universityCampus,
        notListedUniversity,
        specialization,
        notListedSpecialization,
        visaStartDate,
        taxId,
        taxDataUpdatable,
        newTaxDataUpdatable,
        showAdditionalQuestions,
        showInterestMajor,
        interestIndustry,
        interestMajor,
        germanLevel,
        preferredGermanCity,
        preferredSocialMediaConnections,
        interestTopics,
        interestSocialIssues,
      ];
}
