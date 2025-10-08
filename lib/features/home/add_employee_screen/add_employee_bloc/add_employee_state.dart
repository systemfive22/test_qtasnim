part of 'add_employee_bloc.dart';

@freezed
class AddEmployeeState with _$AddEmployeeState {
  const factory AddEmployeeState.initial() = _Initial;

  /// Tambah
  const factory AddEmployeeState.addLoading() = AddLoading;
  const factory AddEmployeeState.addSuccess({String? message}) = AddSuccess;
  const factory AddEmployeeState.addError({String? errorMessage}) = AddError;

  /// Edit
  const factory AddEmployeeState.editLoading() = EditLoading;
  const factory AddEmployeeState.editSuccess({String? message}) = EditSuccess;
  const factory AddEmployeeState.editError({String? errorMessage}) = EditError;

  /// Delete
  const factory AddEmployeeState.deleteLoading() = DeleteLoading;
  const factory AddEmployeeState.deleteSuccess({String? message}) =
      DeleteSuccess;
  const factory AddEmployeeState.deleteError({String? errorMessage}) =
      DeleteError;
}
