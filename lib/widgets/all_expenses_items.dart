import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expense_header_item_model.dart';
import 'package:responsive_dashboard/widgets/inactive_active_all_expenses.dart';

class AllExpensesItems extends StatelessWidget {
  final bool isSelected;
  const AllExpensesItems({
    super.key,
    required this.items,
    required this.isSelected,
  });
  final AllExpenseHeaderItemModel items;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpenses(items: items)
        : InActiveAllExpenses(items: items);
  }
}
