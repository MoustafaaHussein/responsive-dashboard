import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Text('Quick Invoice', style: AppStyles.styleSemiBold20(context)),
          const Expanded(child: SizedBox()),
          Container(
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: (Color(0xfff1f1f1))),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const Icon(FontAwesomeIcons.plus),
          ),
        ],
      ),
    );
  }
}
