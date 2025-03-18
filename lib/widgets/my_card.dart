import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(Assets.imagesCardBackground),
          ),
          color: const Color(0xFF4EB7F2),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                'Name card',
                style: AppStyles.styleRegular16(
                  context,
                ).copyWith(color: Colors.white),
              ),
              subtitle: Text(
                'Syah Bandi',
                style: AppStyles.styleMedium20(context),
              ),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0684 1234 9874 1122',
                    style: AppStyles.styleSemiBold24(
                      context,
                    ).copyWith(color: Colors.white),
                  ),
                  Text(
                    '09/25',
                    style: AppStyles.styleRegular16(
                      context,
                    ).copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 54 - 28),
          ],
        ),
      ),
    );
  }
}
