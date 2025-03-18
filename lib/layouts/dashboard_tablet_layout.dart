import 'package:flutter/material.dart';
import 'package:responsive_dashboard/layouts/dashboard_mobile_layout.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: CustomDrawer()),
        Container(width: 32, color: Colors.white),
        const Expanded(flex: 3, child: DashboardMobileLayout()),
        Container(width: 32, color: Colors.white),
      ],
    );
  }
}
