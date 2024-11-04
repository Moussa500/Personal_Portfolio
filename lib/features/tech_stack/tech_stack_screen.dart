import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:personal_portfolio/common/data/tech_stack.dart';
import 'package:personal_portfolio/common/helpers/is_dark_mode.dart';
import 'package:personal_portfolio/common/widgets/details_text.dart';
import 'package:personal_portfolio/common/widgets/solid_header.dart';
import 'package:personal_portfolio/config/theme/app_colors.dart';

class TechStackScreen extends StatelessWidget {
  const TechStackScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SolidHeader(size: 42.sp, label: "My Tech Stack"),
            DetailsText(
                size: 20.sp,
                label: "Technologies I’ve been working with recently",),
            const SizedBox(
              height: 70,
            ),
            Expanded(
              child: GridView.builder(
                  shrinkWrap: true,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: techStack.length,
                  gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.6, crossAxisCount: MediaQuery.of(context).size.width>1200?6:MediaQuery.of(context).size.width>700?4:3),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        SvgPicture.asset(
                          techStack[index]["asset"]!,
                          height: 70,
                          width: 70,
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Text(
                          techStack[index]["name"]!,
                          style: TextStyle(
                              fontSize: 20.sp, color: context.isDarkMode?AppColors.solidHeadingDarkMode:AppColors.lightContent),
                        ),
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
