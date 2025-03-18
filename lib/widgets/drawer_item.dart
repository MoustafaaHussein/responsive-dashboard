import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/widgets/active_drawer_item.dart';
import 'package:responsive_dashboard/widgets/inactive_drawer_item.dart';

class DrawerItem extends StatelessWidget {
  final bool isActive;
  const DrawerItem({
    super.key,
    required this.drawerItemModel,
    required this.isActive,
  });
  final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(
          title: drawerItemModel.title,
          image: drawerItemModel.image,
        )
        : InActiveDrawerItem(
          title: drawerItemModel.title,
          image: drawerItemModel.image,
        );
  }
}
