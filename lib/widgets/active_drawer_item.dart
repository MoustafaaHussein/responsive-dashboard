import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({super.key, required this.title, required this.image});

  final String title, image;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: FittedBox(
        alignment: Alignment.centerLeft,
        fit: BoxFit.scaleDown,
        child: Text(title, style: AppStyles.styleBold16(context)),
      ),
      leading: SvgPicture.asset(image),
      trailing: Container(color: const Color(0xFF4EB7f2), width: 3.27),
    );
  }
}
