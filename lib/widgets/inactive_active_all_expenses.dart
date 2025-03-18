import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expense_header_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/all_expense_header_items.dart';

class InActiveAllExpenses extends StatelessWidget {
  const InActiveAllExpenses({super.key, required this.items});

  final AllExpenseHeaderItemModel items;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xfff1f1f1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpenseHeaderItems(
            image: items.image,
            imageColor: null,
            imageBackgroundColor: null,
          ),
          const SizedBox(height: 34),
          FittedBox(
            alignment: Alignment.centerLeft,
            child: Text(items.title, style: AppStyles.styleSemiBold16(context)),
          ),
          const SizedBox(height: 8),
          FittedBox(
            alignment: Alignment.centerLeft,
            child: Text(items.date, style: AppStyles.styleRegular12(context)),
          ),
          const SizedBox(height: 16),
          FittedBox(
            alignment: Alignment.centerLeft,
            child: Text(items.price, style: AppStyles.styleSemiBold24(context)),
          ),
        ],
      ),
    );
  }
}

class ActiveAllExpenses extends StatelessWidget {
  const ActiveAllExpenses({super.key, required this.items});

  final AllExpenseHeaderItemModel items;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xff4db7f2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpenseHeaderItems(
            image: items.image,

            imageBackgroundColor: Colors.white,
          ),
          const SizedBox(height: 34),
          FittedBox(
            child: Text(
              items.title,
              style: AppStyles.styleSemiBold16(
                context,
              ).copyWith(color: Colors.white),
            ),
          ),
          const SizedBox(height: 8),
          FittedBox(
            alignment: Alignment.centerLeft,
            child: Text(
              items.date,
              style: AppStyles.styleRegular12(
                context,
              ).copyWith(color: const Color(0xfffafafa)),
            ),
          ),
          const SizedBox(height: 16),
          FittedBox(
            alignment: Alignment.centerLeft,
            child: Text(
              items.price,
              style: AppStyles.styleSemiBold24(
                context,
              ).copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
