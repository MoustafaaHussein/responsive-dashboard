import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/my_transaction_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class TransactionItems extends StatelessWidget {
  const TransactionItems({super.key, required this.transactionModel});
  final MyTransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: const Color(0xFFFAFAFA),
      child: ListTile(
        title: Text(
          transactionModel.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          transactionModel.date,
          style: AppStyles.styleRegular16(context).copyWith(color: Colors.grey),
        ),
        trailing: Text(
          transactionModel.amount,
          style: AppStyles.styleSemiBold20(context).copyWith(
            color:
                transactionModel.isWithdrawl
                    ? Colors.deepOrangeAccent
                    : Colors.green,
          ),
        ),
      ),
    );
  }
}
