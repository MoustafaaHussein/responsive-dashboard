import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_header.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_listcard.dart';
import 'package:responsive_dashboard/widgets/title_text_field.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const QuickInvoiceHeader(),
        const SizedBox(height: 40),
        Text('Lastest Transaction', style: AppStyles.styleSemiBold20(context)),
        const QuickInvoiceListcard(),
        const Divider(height: 60),
        const QuickInvoiceForm(),
      ],
    );
  }
}

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                hint: 'Customer Name',
                title: ' Cusomer Name',
              ),
            ),
            SizedBox(width: 24),
            Expanded(
              child: TitleTextField(
                hint: 'Customer Email',
                title: 'Type Cusomer Email',
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: TitleTextField(hint: 'item Name', title: ' Cusomer Name'),
            ),
            SizedBox(width: 24),
            Expanded(child: TitleTextField(hint: 'Item Amount', title: 'USD')),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                backgroundColor: Colors.white,
                data: 'Add more details',
                textColor: Color(0XFF4DB7F2),
              ),
            ),
            Expanded(child: CustomButton(data: 'Send Money')),
          ],
        ),
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.backgroundColor,
    required this.data,
    this.textColor,
  });
  final Color? backgroundColor, textColor;
  final String data;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
          backgroundColor: backgroundColor ?? const Color(0XFF4DB7F2),
        ),
        onPressed: () {},
        child: Text(
          data,
          style: AppStyles.styleSemiBold18(context).copyWith(color: textColor),
        ),
      ),
    );
  }
}
