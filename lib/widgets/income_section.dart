import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expense_header.dart';
import 'package:responsive_dashboard/widgets/income_header_section.dart';
import 'package:responsive_dashboard/widgets/income_section_body.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [IncomeHeaderSection(), IncomeSectionBody()],
      ),
    );
  }
}
