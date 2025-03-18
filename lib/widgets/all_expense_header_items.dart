import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpenseHeaderItems extends StatelessWidget {
  const AllExpenseHeaderItems({
    super.key,
    required this.image,
    this.imageColor,
    this.imageBackgroundColor,
  });
  final String image;
  final Color? imageColor, imageBackgroundColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: ShapeDecoration(
                  color: imageBackgroundColor ?? const Color(0xfffafafa),
                  shape: const OvalBorder(),
                ),

                child: SvgPicture.asset(
                  image,
                  colorFilter: ColorFilter.mode(
                    imageColor ?? const Color(0xff4eb7f2),
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
          ),
        ),
        const Expanded(child: SizedBox()),
        Transform.rotate(
          angle: -1.57079633 * 2,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: imageColor == null ? const Color(0xff064061) : Colors.white,
          ),
        ),
      ],
    );
  }
}
