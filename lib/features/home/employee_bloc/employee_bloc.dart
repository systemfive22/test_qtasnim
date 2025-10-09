import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_qtasnim/data/models/employee_model.dart';
import 'package:test_qtasnim/data/repositories/employee_repository.dart';
import 'package:injectable/injectable.dart';

part 'employee_event.dart';
part 'employee_state.dart';
part 'employee_bloc.freezed.dart';

@injectable
class EmployeeBloc extends Bloc<EmployeeEvent, EmployeeState> {
  final EmployeeRepository? employeeRepository;
  EmployeeBloc({required this.employeeRepository})
    : assert(employeeRepository != null),
      super(EmployeeState.initial()) {
    on<EmployeeEvent>((event, emit) async {
      emit(const EmployeeState.loadInProgress());
      try {
        final employees = await employeeRepository!.getEmployee(
          search: event.search ?? "",
        );
        if (employees.isNotEmpty) {
          emit(EmployeeState.loadSuccess(employees: employees));
        } else {
          emit(const EmployeeState.loadEmpty());
        }
      } catch (e) {
        emit(EmployeeState.loadFailure(message: e.toString()));
      }
    });
  }
}
