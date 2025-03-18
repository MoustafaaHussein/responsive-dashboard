import 'package:flutter/material.dart';

class CustomDot extends StatelessWidget {
  const CustomDot({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: isActive ? 32 : 8,
      height: 8,
      decoration: ShapeDecoration(
        color: isActive ? const Color(0XFF4DB7F2) : const Color(0XFFE7E7E7),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      duration: const Duration(milliseconds: 200),
    );
  }
}
