import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';

import 'package:responsive_dashboard/widgets/custom_list_tile.dart';
import 'package:responsive_dashboard/widgets/drawer_item_listView.dart';
import 'package:responsive_dashboard/widgets/inactive_drawer_item.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  static const List<DrawerItemModel> items = [
    DrawerItemModel(image: Assets.imagesDashboard, title: 'Dashboard'),
    DrawerItemModel(image: Assets.imagesMyTransctions, title: 'My Transaction'),
    DrawerItemModel(image: Assets.imagesStatistics, title: 'Statistics'),
    DrawerItemModel(image: Assets.imagesWalletAccount, title: 'Wallet Account'),
    DrawerItemModel(image: Assets.imagesMyInvestments, title: 'My Investments'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.70,
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              substitle: 'demo@gmail.com',
              image: Assets.imagesAvatar3,
              titile: 'Lekan Okeowo',
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          DrawerItemListView(items: items),

          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox()),
                InActiveDrawerItem(
                  title: 'System Settings',
                  image: Assets.imagesSettings,
                ),
                InActiveDrawerItem(title: 'Logout', image: Assets.imagesLogout),
                SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
