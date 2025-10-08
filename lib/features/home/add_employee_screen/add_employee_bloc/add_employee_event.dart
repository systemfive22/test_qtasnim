part of 'add_employee_bloc.dart';

@freezed
class AddEmployeeEvent with _$AddEmployeeEvent {
  /// Tambah
  const factory AddEmployeeEvent.employeeAdded({
    required String name,
    required String position,
    required int salary,
    required String address,
    required String phone,
  }) = EmployeeAdded;

  /// Edit
  const factory AddEmployeeEvent.employeeUpdated({
    required int id,
    required String name,
    required String position,
    required int salary,
    required String address,
    required String phone,
  }) = EmployeeUpdated;

  /// Hapus
  const factory AddEmployeeEvent.employeeDeleted({required int id}) =
      EmployeeDeleted;
}
