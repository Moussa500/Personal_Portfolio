import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:personal_portfolio/common/helpers/is_dark_mode.dart';
import 'package:personal_portfolio/common/widgets/solid_header.dart';
import 'package:personal_portfolio/config/theme/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';
class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(),
          Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                SolidHeader(
                    size: 46.sp, label: "For any questions please mail me:"),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "moussamohamed@fss.u-sfax.tn",
                  style: TextStyle(
                    fontSize: 46.sp,
                    foreground: Paint()
                      ..shader = AppColors.gradientHeading
                          .createShader(Rect.fromLTWH(10, 20, 200, 50)),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/images/logo.png",
                      height: 100,
                      width: 100,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                           Text(
                            "+21653423830",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w300,
                                color: context.isDarkMode?AppColors.solidHeadingDarkMode:AppColors.solidHeading),
                          ),
                          SizedBox(
                            width: 30.w,
                          ),
                           Text(
                            "moussamohamed@fss.u-sfax.tn",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w300,
                                color: context.isDarkMode?AppColors.solidHeadingDarkMode:AppColors.solidHeading),
                          ),
                          SizedBox(
                            width: 30.w,
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () async {
                                  await launchUrl(
                                      Uri.parse("https://github.com/Moussa500"));
                                },
                                child: SvgPicture.asset(
                                    "assets/vectors/github_vector.svg"),
                              ),
                              const SizedBox(width: 20),
                              GestureDetector(
                                onTap: () async {
                                  await launchUrl(Uri.parse(
                                      "https://www.linkedin.com/in/mohamed-moussa-71776b259/"));
                                },
                                child: SvgPicture.asset(
                                    "assets/vectors/linkedin_vector.svg"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Divider(),
            ],
          ),
        ],
      ),
    );
  }
}
