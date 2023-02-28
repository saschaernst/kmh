import 'package:freezed_annotation/freezed_annotation.dart';

part 'company.freezed.dart';
part 'company.g.dart';

@freezed
class Company with _$Company {
  const factory Company(
    String id,
    String name,
    String street,
    String zip,
    String city,
    String contact,
  ) = _Company;

  factory Company.empty() => const Company('', '', '', '', '', '');

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);
}
