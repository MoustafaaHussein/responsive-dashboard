import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expense.dart';
import 'package:responsive_dashboard/widgets/income_section.dart';
import 'package:responsive_dashboard/widgets/my_card_transaction_view.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpense(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: MyCardAndTransactionView(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: IncomeSection(),
          ),
        ],
      ),
    );
  }
}
