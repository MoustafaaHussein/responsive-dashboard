import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/dots_indicator.dart';
import 'package:responsive_dashboard/widgets/mycard_page_view.dart';
import 'package:responsive_dashboard/widgets/transaction_listview.dart';

class MyCardAndTransactionView extends StatefulWidget {
  const MyCardAndTransactionView({super.key});

  @override
  State<MyCardAndTransactionView> createState() =>
      _MyCardAndTransactionViewState();
}

class _MyCardAndTransactionViewState extends State<MyCardAndTransactionView> {
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(
        () {},
      ); // changing the page will store the value inside the index
    });
    super.initState();
  }

  late PageController pageController;
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('My Card', style: AppStyles.styleSemiBold20(context)),
        const SizedBox(height: 20),
        MycardPageView(pageController: pageController),
        const SizedBox(height: 20),
        DotsIndicator(currentPageIndex: currentPageIndex),
        const SizedBox(height: 20),
        const TransactionListView(),
      ],
    );
  }
}
