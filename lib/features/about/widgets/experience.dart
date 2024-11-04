import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:personal_portfolio/common/helpers/is_dark_mode.dart';
import 'package:personal_portfolio/common/widgets/details_text.dart';
import 'package:personal_portfolio/config/theme/app_colors.dart';

class Experience extends StatelessWidget {
  final List<Map<String, String>> experiences;
  const Experience({super.key, required this.experiences});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: MediaQuery.of(context).size.width * .6,
      child: ListView.separated(
          itemCount: experiences.length,
          scrollDirection: Axis.vertical,
          separatorBuilder: (context, index) => const SizedBox(
                height: 15,
              ),
          itemBuilder: (context, index) {
            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              experiences[index]["position"]!,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300,
                                  color: context.isDarkMode
                                      ? AppColors.solidHeadingDarkMode
                                      : const Color.fromARGB(255, 79, 63, 63),
                                  fontFamily: "Poppins"),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SvgPicture.asset("assets/vectors/company.svg"),
                                const SizedBox(
                                  width: 7.33,
                                ),
                                Text(
                                  experiences[index]["company"]!,
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.lightContent),
                                ),
                                const SizedBox(
                                  width: 60,
                                ),
                                SvgPicture.asset("assets/vectors/location.svg"),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  experiences[index]["location"]!,
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.lightContent),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                width: 84,
                                height: 24,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100.r),
                                  color: AppColors.buttonSuccess,
                                ),
                                child: Center(
                                  child: Text(
                                    experiences[index]["state"]!,
                                    style: const TextStyle(
                                      color: AppColors.buttonText,
                                      fontSize: 9,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                SvgPicture.asset("assets/vectors/date.svg"),
                                const SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  experiences[index]["date"]!,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.lightContent,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Divider(
                      thickness: 2,
                      color: Color(0xffEBEAED),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
