import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_portfolio/common/helpers/is_dark_mode.dart';
import 'package:personal_portfolio/config/theme/app_colors.dart';
import 'package:personal_portfolio/features/home/screen/home_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 120),
        child: SingleChildScrollView(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  "Hi 👋,\nMy name is Mohamed Moussa .\nI'm a Computer Science Student \nand a Flutter Developer",
                  style: TextStyle(
                    fontSize: 38.sp,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins",
                    color: context.isDarkMode
                        ? Colors.white
                        : AppColors.solidHeading,
                  )),
              const Spacer(),
              ClipOval(
                child: Container(
                  height: MediaQuery.of(context).size.width > 1200 ? 250 : 100,
                  width: MediaQuery.of(context).size.width > 1200 ? 250 : 100,
                  decoration: BoxDecoration(
                    gradient: AppColors.gradientHeading,
                  ),
                  child: Image.asset(
                    "assets/images/pdp.png",
                    height: 100,
                    width: 100,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
