import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/models/listtile_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

List<ListtileModel> itemList = [
  ListtileModel(
    image: Assets.imagesAvatar1,
    title: 'Mardani Andi',
    subtitle: 'mardaniAndi@gmail.com',
  ),
  ListtileModel(
    image: Assets.imagesAvatar2,
    title: 'jousha nito ',
    subtitle: 'joushaNito@gmail.com',
  ),
  ListtileModel(
    image: Assets.imagesAvatar3,
    title: 'Soko mumo',
    subtitle: 'SukoMomo@gmail.com',
  ),
];

class QuickInvoiceListcard extends StatelessWidget {
  const QuickInvoiceListcard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children:
            itemList
                .map((e) => IntrinsicWidth(child: ListTileCard(model: e)))
                .toList(),
      ),
    );
  }
}

class ListTileCard extends StatelessWidget {
  const ListTileCard({super.key, required this.model});

  final ListtileModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(model.image),
        title: Text(model.title, style: AppStyles.styleSemiBold16(context)),
        subtitle: Text(
          model.subtitle,
          style: AppStyles.styleRegular12(context),
        ),
      ),
    );
  }
}
