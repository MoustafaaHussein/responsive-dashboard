import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
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
          titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,

          title: activeIndex == 0 ? 'Design Service ' : '40%',
          value: 40,
          titleStyle: AppStyles.styleMedium16(
            context,
          ).copyWith(color: activeIndex == 0 ? Colors.black : Colors.white),
          radius: activeIndex == 0 ? 60 : 40,
          color: const Color(0XFF208bC7),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 1 ? 1.1 : null,
          title: activeIndex == 1 ? 'Design Product' : '25%',
          value: 25,
          titleStyle: AppStyles.styleMedium16(
            context,
          ).copyWith(color: activeIndex == 1 ? Colors.black : Colors.white),
          radius: activeIndex == 1 ? 60 : 40,
          color: const Color(0XFF4DB7F2),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 2 ? 1.5 : null,
          title: activeIndex == 2 ? 'Product Royalty' : '20%',
          value: 20,
          titleStyle: AppStyles.styleMedium16(
            context,
          ).copyWith(color: activeIndex == 2 ? Colors.black : Colors.white),
          radius: activeIndex == 2 ? 60 : 40,
          color: const Color(0XFF064060),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 3 ? 1.5 : null,
          title: activeIndex == 3 ? 'Others' : '22%',
          value: 22,
          titleStyle: AppStyles.styleMedium16(
            context,
          ).copyWith(color: activeIndex == 3 ? Colors.black : Colors.white),
          radius: activeIndex == 3 ? 60 : 40,
          color: const Color(0XFFE2DECD),
        ),
      ],
    );
  }
}
