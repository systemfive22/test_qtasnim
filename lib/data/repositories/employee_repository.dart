import 'package:injectable/injectable.dart';
import 'package:test_qtasnim/data/models/employee_model.dart';
import 'package:test_qtasnim/data/network/api_routes.dart';
import 'package:test_qtasnim/data/network/network_impl.dart';

@lazySingleton
class EmployeeRepository {
  EmployeeRepository({required this.networkImplement});
  final NetworkImplement networkImplement;

  Future<List<Employee>> getEmployee({String search = ""}) async {
    Map<String, dynamic>? queryParameters = {'q': search};
    final response = await networkImplement.get(
      ApiRoutes.GET_EMPLOYEES,
      queryParameters: queryParameters,
    );

    final data = response.data as List;
    return data.map((e) => Employee.fromJson(e)).toList();
  }
}
