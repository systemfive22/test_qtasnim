import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_qtasnim/core/common/widgets/custom_form_field.dart';
import 'package:test_qtasnim/core/common/widgets/setting_section.dart';
import 'package:test_qtasnim/core/themes/theme.dart';
import 'package:test_qtasnim/core/common/widgets/custom_appbar.dart';
import 'package:test_qtasnim/core/utils/validation/validated.dart';
import 'package:test_qtasnim/data/models/employee_model.dart';
import 'package:test_qtasnim/features/home/add_employee_screen/add_employee_bloc/add_employee_bloc.dart';

@RoutePage()
class AddEditEmployeeScreen extends StatefulWidget {
  final Employee? employee;
  const AddEditEmployeeScreen({super.key, this.employee});

  @override
  State<AddEditEmployeeScreen> createState() => _AddEditEmployeeScreenState();
}

class _AddEditEmployeeScreenState extends State<AddEditEmployeeScreen> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _nameCtrl;
  late TextEditingController _positionCtrl;
  late TextEditingController _salaryCtrl;
  late TextEditingController _addressCtrl;
  late TextEditingController _phoneCtrl;

  @override
  void initState() {
    super.initState();
    _nameCtrl = TextEditingController(text: widget.employee?.name ?? "");
    _positionCtrl = TextEditingController(
      text: widget.employee?.position ?? "",
    );
    _salaryCtrl = TextEditingController(
      text: widget.employee?.salary.toString() ?? "",
    );
    _addressCtrl = TextEditingController(text: widget.employee?.address ?? "");
    _phoneCtrl = TextEditingController(text: widget.employee?.phone ?? "");
  }

  @override
  void dispose() {
    _nameCtrl.dispose();
    _positionCtrl.dispose();
    _salaryCtrl.dispose();
    _addressCtrl.dispose();
    _phoneCtrl.dispose();
    super.dispose();
  }

  void _onSubmit() {
    if (_formKey.currentState!.validate()) {
      final bloc = context.read<AddEmployeeBloc>();
      if (widget.employee == null) {
        bloc.add(
          AddEmployeeEvent.employeeAdded(
            name: _nameCtrl.text.trim(),
            position: _positionCtrl.text.trim(),
            salary: int.parse(_salaryCtrl.text),
            address: _addressCtrl.text.trim(),
            phone: _phoneCtrl.text.trim(),
          ),
        );
      } else {
        bloc.add(
          AddEmployeeEvent.employeeUpdated(
            id: widget.employee!.id,
            name: _nameCtrl.text.trim(),
            position: _positionCtrl.text.trim(),
            salary: int.parse(_salaryCtrl.text),
            address: _addressCtrl.text.trim(),
            phone: _phoneCtrl.text.trim(),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        title: widget.employee != null ? "Edit Employee" : "Tambah Employee",
        context: context,
        isDrawer: false,
      ),
      body: BlocConsumer<AddEmployeeBloc, AddEmployeeState>(
        listener: (context, state) {
          state.whenOrNull(
            addSuccess: (msg) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(msg ?? "Berhasil menambah")),
              );
              Navigator.pop(context, true);
            },
            editSuccess: (msg) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(msg ?? "Berhasil update")));
              Navigator.pop(context, true);
            },
            addError: (err) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(err ?? "Gagal tambah"),
                  backgroundColor: Colors.red,
                ),
              );
            },
            editError: (err) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(err ?? "Gagal update"),
                  backgroundColor: Colors.red,
                ),
              );
            },
          );
        },
        builder: (context, state) {
          final isLoading = state.maybeWhen(
            addLoading: () => true,
            editLoading: () => true,
            orElse: () => false,
          );

          return SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SettingsSection(
                    title: '',
                    items: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          spacing: 16,
                          children: [
                            CustomTextFormField(
                              title: "Nama",
                              hintText: "Masukkan nama karyawan",
                              controller: _nameCtrl,
                              prefixIcon: Icons.person,
                              isRequired: true,
                              validator: (v) =>
                                  Validate.validateNotEmpty(v, "Nama"),
                            ),
                            CustomTextFormField(
                              title: "Jabatan",
                              hintText: "Masukkan jabatan",
                              controller: _positionCtrl,
                              prefixIcon: Icons.work,
                              isRequired: true,
                              validator: (v) =>
                                  Validate.validateNotEmpty(v, "Jabatan"),
                            ),
                            CustomTextFormField(
                              title: "Gaji",
                              hintText: "Masukkan gaji",
                              controller: _salaryCtrl,
                              prefixIcon: Icons.monetization_on,
                              keyboardType: TextInputType.number,
                              isRequired: true,
                              validator: (v) =>
                                  Validate.validateNumber(v, "Gaji"),
                            ),
                            CustomTextFormField(
                              title: "Alamat",
                              hintText: "Masukkan alamat",
                              controller: _addressCtrl,
                              prefixIcon: Icons.home,
                              validator: (v) => null,
                            ),
                            CustomTextFormField(
                              title: "Nomor Telepon",
                              hintText: "Masukkan nomor telepon",
                              isRequired: true,
                              controller: _phoneCtrl,
                              prefixIcon: Icons.phone,
                              validator: (v) =>
                                  Validate.validatePhone(v, "Nomor Telepon"),
                            ),
                            const SizedBox(height: 20),
                            SizedBox(
                              width: double.infinity,
                              height: 50,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: MyTheme.color.primary,
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                onPressed: isLoading ? null : _onSubmit,
                                child: isLoading
                                    ? const SizedBox(
                                        height: 20,
                                        width: 20,
                                        child: CircularProgressIndicator(
                                          strokeWidth: 2,
                                          color: Colors.white,
                                        ),
                                      )
                                    : Text(
                                        widget.employee != null
                                            ? "Update"
                                            : "Tambah",
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
