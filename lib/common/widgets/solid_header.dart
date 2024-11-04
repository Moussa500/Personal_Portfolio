import 'package:flutter/material.dart';
import 'package:personal_portfolio/common/helpers/is_dark_mode.dart';
import 'package:personal_portfolio/config/theme/app_colors.dart';
import 'package:personal_portfolio/features/home/screen/home_page.dart';

class SolidHeader extends StatelessWidget {
  final double size;
  final String label;
  const SolidHeader({super.key, required this.size, required this.label});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
          fontSize: size,
          fontWeight: FontWeight.bold,
          fontFamily: "Poppins",
          color: context.isDarkMode
              ? Colors.white
              : AppColors.solidHeading),
    );
  }
}
