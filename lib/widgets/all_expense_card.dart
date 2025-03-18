import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expense_header_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/all_expenses_items.dart';

class AllExpenseCard extends StatefulWidget {
  const AllExpenseCard({super.key});

  @override
  State<AllExpenseCard> createState() => _AllExpenseCardState();
}

class _AllExpenseCardState extends State<AllExpenseCard> {
  List<AllExpenseHeaderItemModel> itemsList = [
    AllExpenseHeaderItemModel(
      image: Assets.imagesIncome,
      title: 'Income',
      date: 'April 2024 ',
      price: r'$20,129',
    ),
    AllExpenseHeaderItemModel(
      image: Assets.imagesBalance,
      title: 'balance',
      date: 'April 2024 ',
      price: r'$20,129',
    ),
    AllExpenseHeaderItemModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      date: 'April 2024 ',
      price: r'$20,129',
    ),
  ];
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children:
          itemsList.asMap().entries.map((e) {
            int index = e.key;
            var item = e.value;
            return Expanded(
              child: GestureDetector(
                onTap: () {
                  updateIndex(index);
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: index == 1 ? 8 : 0),
                  child: AllExpensesItems(
                    items: item,
                    isSelected: selectedIndex == index,
                  ),
                ),
              ),
            );
          }).toList(),
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
