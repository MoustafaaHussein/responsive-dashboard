// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/widgets/drawer_item.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({super.key, required this.items});

  final List<DrawerItemModel> items;

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: widget.items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: DrawerItem(
            drawerItemModel: widget.items[index],
            isActive: activeIndex == index,
          ),
        );
      },
    );
  }
}
