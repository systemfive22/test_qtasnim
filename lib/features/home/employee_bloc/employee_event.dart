part of 'employee_bloc.dart';

@freezed
sealed class EmployeeEvent with _$EmployeeEvent {
  const factory EmployeeEvent.getEmployee({String? search}) = GetEmployee;
}
