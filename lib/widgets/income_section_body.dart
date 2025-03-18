import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';
import 'package:responsive_dashboard/widgets/detailed_income_chart.dart';
import 'package:responsive_dashboard/widgets/income_chart.dart';
import 'package:responsive_dashboard/widgets/item_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktop && width < 1410
        ? const Expanded(
          child: AspectRatio(
            aspectRatio: 1,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: DetailedIncomeChart(),
            ),
          ),
        )
        : const Row(
          children: [
            Expanded(child: AspectRatio(aspectRatio: 1, child: IncomeChart())),
            Expanded(flex: 2, child: IncomeDeatils()),
          ],
        );
  }
}
