import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class AllExpenseHeader extends StatelessWidget {
  const AllExpenseHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Row(
        children: [
          Text('All Expense', style: AppStyles.styleSemiBold20(context)),
          const Expanded(child: SizedBox()),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: (Color(0xfff1f1f1))),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Row(
              children: [
                Text('Monthly', style: AppStyles.styleMedium16(context)),
                const SizedBox(width: 18),
                const Icon(Icons.arrow_downward, color: Color(0xFF064061)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomBackgroundContainer extends StatelessWidget {
  const CustomBackgroundContainer({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: const Color(0xffFFFFFF),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: child,
    );
  }
}
