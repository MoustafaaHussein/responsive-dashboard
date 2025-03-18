import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/income_details.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.item});

  final IncomeModel item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: item.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(item.title, style: AppStyles.styleRegular16(context)),
      trailing: Text(item.subTitle, style: AppStyles.styleMedium16(context)),
    );
  }
}
