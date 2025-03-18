import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class IncomeHeaderSection extends StatelessWidget {
  const IncomeHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Income', style: AppStyles.styleSemiBold20(context)),
        const Expanded(child: SizedBox()),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0XFFF1F1F1)),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Row(
            children: [
              Text('Monthly', style: AppStyles.styleMedium16(context)),
              const SizedBox(width: 16),
              const Icon(FontAwesomeIcons.arrowDown),
            ],
          ),
        ),
      ],
    );
  }
}
