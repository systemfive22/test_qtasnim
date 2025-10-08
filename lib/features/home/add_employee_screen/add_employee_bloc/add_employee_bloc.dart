import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:test_qtasnim/data/repositories/employee_repository.dart';

part 'add_employee_event.dart';
part 'add_employee_state.dart';
part 'add_employee_bloc.freezed.dart';

@injectable
class AddEmployeeBloc extends Bloc<AddEmployeeEvent, AddEmployeeState> {
  final EmployeeRepository? employeeRepository;

  AddEmployeeBloc({required this.employeeRepository})
    : assert(employeeRepository != null),
      super(const AddEmployeeState.initial()) {
    on<EmployeeAdded>((event, emit) async {
      emit(const AddEmployeeState.addLoading());
      try {
        await employeeRepository!.addEmployee(
          name: event.name,
          position: event.position,
          salary: event.salary,
          address: event.address,
          phone: event.phone,
        );
        emit(
          const AddEmployeeState.addSuccess(
            message: "Employee added successfully",
          ),
        );
      } catch (e) {
        emit(AddEmployeeState.addError(errorMessage: e.toString()));
      }
    });

    on<EmployeeUpdated>((event, emit) async {
      emit(const AddEmployeeState.editLoading());
      try {
        await employeeRepository!.updateEmployee(
          id: event.id,
          name: event.name,
          position: event.position,
          salary: event.salary,
          address: event.address,
          phone: event.phone,
        );
        emit(
          AddEmployeeState.editSuccess(
            message: "Employee updated successfully",
          ),
        );
      } catch (e) {
        emit(AddEmployeeState.editError(errorMessage: e.toString()));
      }
    });

    on<EmployeeDeleted>((event, emit) async {
      emit(const AddEmployeeState.deleteLoading());
      try {
        await employeeRepository!.deleteEmployee(id: event.id);
        emit(
          AddEmployeeState.deleteSuccess(
            message: "Employee deleted successfully",
          ),
        );
      } catch (e) {
        emit(AddEmployeeState.deleteError(errorMessage: e.toString()));
      }
    });
  }
}
