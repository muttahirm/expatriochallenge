// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      id: json['id'] as int,
      dateOfBirth: json['dateOfBirth'] as String,
      title: json['title'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      profession: json['profession'] as String,
      nationality: json['nationality'] as String,
      emailAddress: json['emailAddress'] as String,
      beginOfStudy: json['beginOfStudy'] as String,
      phoneCountryCode: json['phoneCountryCode'] as String,
      phoneNumber: json['phoneNumber'] as String,
      birthPlace: json['birthPlace'] as String,
      birthCountry: json['birthCountry'] as String,
      germanAddress:
          GermanAddress.fromJson(json['germanAddress'] as Map<String, dynamic>),
      foreignAddress: ForeignAddress.fromJson(
          json['foreignAddress'] as Map<String, dynamic>),
      arrivalInGermany: json['arrivalInGermany'] as String,
      universityName: json['universityName'] as String,
      universityCampus: json['universityCampus'] as String,
      notListedUniversity: json['notListedUniversity'] as String,
      specialization: json['specialization'] as String,
      notListedSpecialization: json['notListedSpecialization'] as String,
      visaStartDate: json['visaStartDate'] as String?,
      taxId: json['taxId'] as String?,
      taxDataUpdatable: json['taxDataUpdatable'] as bool,
      newTaxDataUpdatable: json['newTaxDataUpdatable'] as bool,
      showAdditionalQuestions: json['showAdditionalQuestions'] as bool,
      showInterestMajor: json['showInterestMajor'] as bool,
      interestIndustry: (json['interestIndustry'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      interestMajor: (json['interestMajor'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      germanLevel: json['germanLevel'] as String?,
      preferredGermanCity: (json['preferredGermanCity'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      preferredSocialMediaConnections:
          (json['preferredSocialMediaConnections'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
      interestTopics: (json['interestTopics'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      interestSocialIssues: (json['interestSocialIssues'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dateOfBirth': instance.dateOfBirth,
      'title': instance.title,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'profession': instance.profession,
      'nationality': instance.nationality,
      'emailAddress': instance.emailAddress,
      'beginOfStudy': instance.beginOfStudy,
      'phoneCountryCode': instance.phoneCountryCode,
      'phoneNumber': instance.phoneNumber,
      'birthPlace': instance.birthPlace,
      'birthCountry': instance.birthCountry,
      'germanAddress': instance.germanAddress,
      'foreignAddress': instance.foreignAddress,
      'arrivalInGermany': instance.arrivalInGermany,
      'universityName': instance.universityName,
      'universityCampus': instance.universityCampus,
      'notListedUniversity': instance.notListedUniversity,
      'specialization': instance.specialization,
      'notListedSpecialization': instance.notListedSpecialization,
      'visaStartDate': instance.visaStartDate,
      'taxId': instance.taxId,
      'taxDataUpdatable': instance.taxDataUpdatable,
      'newTaxDataUpdatable': instance.newTaxDataUpdatable,
      'showAdditionalQuestions': instance.showAdditionalQuestions,
      'showInterestMajor': instance.showInterestMajor,
      'interestIndustry': instance.interestIndustry,
      'interestMajor': instance.interestMajor,
      'germanLevel': instance.germanLevel,
      'preferredGermanCity': instance.preferredGermanCity,
      'preferredSocialMediaConnections':
          instance.preferredSocialMediaConnections,
      'interestTopics': instance.interestTopics,
      'interestSocialIssues': instance.interestSocialIssues,
    };
