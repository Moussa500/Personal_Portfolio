import 'package:flutter/material.dart';
import 'package:personal_portfolio/common/helpers/is_dark_mode.dart';
import 'package:personal_portfolio/common/widgets/solid_header.dart';
import 'package:personal_portfolio/config/theme/app_colors.dart';

class DetailsText extends StatelessWidget {
  final double size;
  final String label;
  const DetailsText({super.key, required this.size, required this.label});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
          fontSize: size,
          fontWeight: FontWeight.w400,
          fontFamily: "Poppins",
          color: context.isDarkMode?AppColors.lightContent:AppColors.darkContent),
    );
  }
}
