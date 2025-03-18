import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return PieChart(getChartData());
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pieTouchResponse) {
          activeIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sections: [
        PieChartSectionData(
          value: 40,
          radius: activeIndex == 0 ? 50 : 40,
          color: const Color(0XFF208bC7),
          showTitle: false,
        ),
        PieChartSectionData(
          value: 25,
          radius: activeIndex == 1 ? 50 : 40,
          color: const Color(0XFF4DB7F2),
          showTitle: false,
        ),
        PieChartSectionData(
          value: 20,
          radius: activeIndex == 2 ? 50 : 40,
          color: const Color(0XFF064060),
          showTitle: false,
        ),
        PieChartSectionData(
          value: 22,
          radius: activeIndex == 3 ? 50 : 40,
          color: const Color(0XFFE2DECD),
          showTitle: false,
        ),
      ],
    );
  }
}
