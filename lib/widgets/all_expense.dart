import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expense_card.dart';
import 'package:responsive_dashboard/widgets/all_expense_header.dart';
import 'package:responsive_dashboard/widgets/quick_invoice.dart';

class AllExpense extends StatelessWidget {
  const AllExpense({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const AllExpenseHeader(),
          const SizedBox(height: 16),
          const AllExpenseCard(),
          Container(height: 24, color: const Color(0xffF7F9FA)),
          const QuickInvoice(),
        ],
      ),
    );
  }
}
