import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/income_details.dart';
import 'package:responsive_dashboard/widgets/item_deatils.dart';

class IncomeDeatils extends StatelessWidget {
  const IncomeDeatils({super.key});
  static var items = [
    IncomeModel(
      color: const Color(0XFF208bC7),
      title: 'Design Service',
      subTitle: '%40',
    ),
    IncomeModel(
      color: const Color(0XFF4DB7F2),
      title: 'Design Product',
      subTitle: '%25',
    ),
    IncomeModel(
      color: const Color(0XFF064060),
      title: 'Design Royalti',
      subTitle: '%20',
    ),
    IncomeModel(
      color: const Color(0XFFE2DECD),
      title: 'Others',
      subTitle: '%22',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    log(MediaQuery.sizeOf(context).width.toString());
    return Column(children: items.map((e) => ItemDetails(item: e)).toList());
  }
}
