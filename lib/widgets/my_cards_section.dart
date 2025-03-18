import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/income_section.dart';
import 'package:responsive_dashboard/widgets/my_card_transaction_view.dart';

class MyCardsSection extends StatelessWidget {
  const MyCardsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyCardAndTransactionView(),
          SizedBox(height: 20),
          Expanded(child: IncomeSection()),
        ],
      ),
    );
  }
}
