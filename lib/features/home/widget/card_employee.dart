import 'package:flutter/material.dart';
import 'package:test_qtasnim/data/models/employee_model.dart';
import 'package:test_qtasnim/core/themes/theme.dart';
import 'package:test_qtasnim/features/home/widget/show_dialog_delete_employee.dart';

class CardEmployee extends StatelessWidget {
  final Employee employee;
  final VoidCallback? onTap;
  final VoidCallback? onDelete;

  const CardEmployee({
    super.key,
    required this.employee,
    this.onTap,
    this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(employee.id),
      direction: DismissDirection.endToStart,
      background: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(12),
        ),
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: const Icon(Icons.delete, color: Colors.white),
      ),
      confirmDismiss: (_) async {
        return await showDialog<bool>(
          context: context,
          builder: (ctx) =>
              ShowDialogDeleteEmployee(employeeName: employee.name),
        );
      },

      onDismissed: (_) => onDelete?.call(),
      child: GestureDetector(
        onTap: onTap,
        child: Card(
          color: MyTheme.color.cardBlackWhite(context),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 2,
          margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              spacing: 3,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        employee.name,
                        style: MyTheme.style.title,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    _SalaryChip(salary: employee.salary.toString()),
                  ],
                ),
                const Divider(height: 10),
                // 🔹 Info detail seperti TimesheetCard
                _InfoRow(label: 'Jabatan', value: employee.position),
                _InfoRow(label: 'Alamat', value: employee.address),
                _InfoRow(label: 'Telepon', value: employee.phone),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final String label;
  final String value;

  const _InfoRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.25,
          child: Text(label, style: MyTheme.style.semiTitle),
        ),
        const Text(':  '),
        Expanded(
          child: Text(
            value,
            style: MyTheme.style.subtitle,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}

class _SalaryChip extends StatelessWidget {
  final String salary;
  const _SalaryChip({required this.salary});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        "Rp $salary",
        style: MyTheme.style.subtitle.copyWith(color: Colors.white),
      ),
      backgroundColor: Colors.green,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    );
  }
}
