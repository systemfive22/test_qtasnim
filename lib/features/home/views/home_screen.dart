import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:test_qtasnim/app.dart';
import 'package:test_qtasnim/core/common/widgets/custom_appbar.dart';
import 'package:test_qtasnim/core/common/widgets/search_item.dart';
import 'package:test_qtasnim/features/home/add_employee_screen/add_employee_bloc/add_employee_bloc.dart';
import 'package:test_qtasnim/features/home/employee_bloc/employee_bloc.dart';
import 'package:test_qtasnim/features/home/widget/card_employee.dart';
import 'package:test_qtasnim/routing/route.gr.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    context.read<EmployeeBloc>().add(const EmployeeEvent.getEmployee());
  }

  @override
  void dispose() {
    _searchController.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  Future<void> _refreshEmployees() async {
    context.read<EmployeeBloc>().add(const EmployeeEvent.getEmployee());
  }

  void _onSearchChanged(String query) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      context.read<EmployeeBloc>().add(
        EmployeeEvent.getEmployee(search: query),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        title: 'Home',
        isDrawer: true,
        context: context,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SearchItem(
              controller: _searchController,
              autoFocus: false,
              hintText: "Cari karyawan...",
              onChange: _onSearchChanged,
              onSubmit: (value) {
                context.read<EmployeeBloc>().add(
                  EmployeeEvent.getEmployee(search: value),
                );
              },
            ),
          ),
        ),
      ),

      body: MultiBlocListener(
        listeners: [
          BlocListener<AddEmployeeBloc, AddEmployeeState>(
            listenWhen: (prev, curr) =>
                curr is DeleteSuccess || curr is DeleteError,
            listener: (context, state) {
              state.maybeWhen(
                deleteSuccess: (msg) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(msg ?? "Berhasil hapus")),
                  );
                  _refreshEmployees();
                },
                deleteError: (err) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(err ?? "Gagal hapus"),
                      backgroundColor: Colors.red,
                    ),
                  );
                },
                orElse: () {},
              );
            },
          ),
        ],
        child: BlocBuilder<EmployeeBloc, EmployeeState>(
          builder: (context, state) {
            return state.when(
              initial: () => const Center(child: Text("Belum ada data")),
              loadInProgress: () =>
                  const Center(child: CircularProgressIndicator()),
              loadSuccess: (employees) {
                if (employees.isEmpty) {
                  return const Center(child: Text("Data kosong"));
                }
                return RefreshIndicator(
                  onRefresh: _refreshEmployees,
                  child: ListView.separated(  
                    itemCount: employees.length,
                    separatorBuilder: (_, __) => const Divider(),
                    itemBuilder: (context, index) {
                      final emp = employees[index];
                      return CardEmployee(
                        employee: emp,
                        onTap: () {
                          appRoute.push(AddEditEmployeeRoute(employee: emp));
                        },
                        onDelete: () {
                          context.read<AddEmployeeBloc>().add(
                            AddEmployeeEvent.employeeDeleted(id: emp.id),
                          );
                        },
                      );
                    },
                  ),
                );
              },
              loadFailure: (msg) => Center(child: Text("Error: $msg")),
              loadEmpty: () => const Center(child: Text("Data kosong")),
            );
          },
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          appRoute.push(AddEditEmployeeRoute());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
