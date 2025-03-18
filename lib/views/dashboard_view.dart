import 'package:flutter/material.dart';
import 'package:responsive_dashboard/layouts/adaptive_layout.dart';
import 'package:responsive_dashboard/layouts/dashboard_desktop_layout.dart';
import 'package:responsive_dashboard/layouts/dashboard_mobile_layout.dart';
import 'package:responsive_dashboard/layouts/dashboard_tablet_layout.dart';
import 'package:responsive_dashboard/utils/size_config.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
    return Scaffold(
      key: scaffoldKey,
      drawer:
          SizeConfig.width < SizeConfig.tablet ? const CustomDrawer() : null,
      appBar:
          SizeConfig.width < SizeConfig.tablet
              ? AppBar(
                leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.menu),
                ),
              )
              : null,
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashboardMobileLayout(),
        tabletLayout: (context) => const DashboardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
