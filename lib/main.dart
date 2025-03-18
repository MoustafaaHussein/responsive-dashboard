import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/dashboard_view.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) {
        return const ResponsiveApp();
      },
    ),
  );
}

class ResponsiveApp extends StatelessWidget {
  const ResponsiveApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: const DashboardView(),
    );
  }
}
