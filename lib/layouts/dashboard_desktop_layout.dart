import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expense.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/my_cards_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    log(MediaQuery.sizeOf(context).width.toString());
    return Row(
      children: [
        const Expanded(child: CustomDrawer()),
        Container(width: 32, color: const Color(0xFFF1F1F1)),
        const Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                fillOverscroll: true,
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(flex: 2, child: AllExpense()),
                    SizedBox(width: 24),
                    Expanded(child: MyCardsSection()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
