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

  Future<Employee> addEmployee({
    required String name,
    required String position,
    required int salary,
    required String address,
    required String phone,
  }) async {
    final body = {
      "name": name,
      "position": position,
      "salary": salary,
      "address": address,
      "phone": phone,
    };

    final response = await networkImplement.postRaw(
      url: ApiRoutes.GET_EMPLOYEES,
      body: body,
    );

    return Employee.fromJson(response.data);
  }

  Future<Employee> updateEmployee({
    required int id,
    required String name,
    required String position,
    required int salary,
    required String address,
    required String phone,
  }) async {
    final body = {
      "id": id,
      "name": name,
      "position": position,
      "salary": salary,
      "address": address,
      "phone": phone,
    };

    final response = await networkImplement.put(
      "${ApiRoutes.GET_EMPLOYEES}/$id",
      body,
    );

    return Employee.fromJson(response.data);
  }

  Future<void> deleteEmployee({required int id}) async {
    await networkImplement.delete("${ApiRoutes.GET_EMPLOYEES}/$id");
  }
}
