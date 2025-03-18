import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/my_transaction_model.dart';
import 'package:responsive_dashboard/widgets/transaction_items.dart';

class TransactionListView extends StatelessWidget {
  const TransactionListView({super.key});
  static const items = [
    MyTransactionModel(
      isWithdrawl: true,
      title: 'Cash WithDrawl',
      date: '13 Aprl 2023',
      amount: r'$20,129',
    ),
    MyTransactionModel(
      isWithdrawl: false,
      title: 'Landing Page project',
      date: '13 Aprl 2023',
      amount: r'$150',
    ),
    MyTransactionModel(
      isWithdrawl: false,
      title: 'Mobile App project ',
      date: '13 Aprl 2023',
      amount: r'$200',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          items.map((e) => TransactionItems(transactionModel: e)).toList(),
    );
  }
}
