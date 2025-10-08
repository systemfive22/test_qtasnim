import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_model.freezed.dart';
part 'employee_model.g.dart';

@freezed
abstract class EmployeeModel with _$EmployeeModel {
  const factory EmployeeModel({required List<Employee> employees}) =
      _EmployeeModel;

  factory EmployeeModel.fromJson(List<dynamic> json) =>
      EmployeeModel(employees: json.map((e) => Employee.fromJson(e)).toList());
}

@freezed
sealed class Employee with _$Employee {
  const factory Employee({
    required int id,
    required String name,
    required String position,
    required int salary,
    required String address,
    required String phone,
  }) = _Employee;

  factory Employee.fromJson(Map<String, dynamic> json) =>
      _$EmployeeFromJson(json);
}
