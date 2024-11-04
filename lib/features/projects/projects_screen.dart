import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_portfolio/common/data/projects.dart';
import 'package:personal_portfolio/common/helpers/is_dark_mode.dart';
import 'package:personal_portfolio/common/widgets/details_text.dart';
import 'package:personal_portfolio/common/widgets/solid_header.dart';
import 'package:personal_portfolio/config/theme/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SolidHeader(size: 42.sp, label: "Projects"),
          const SizedBox(
            height: 32,
          ),
          DetailsText(size: 20.sp, label: "Things I’ve built so far"),
          SizedBox(
            height: 111.h,
          ),
          Expanded(
            child: GridView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const AlwaysScrollableScrollPhysics(),
                itemCount: projects.length,
                gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 50,
                    childAspectRatio: MediaQuery.of(context).size.width > 1200?0.6:1,
                    crossAxisCount: (MediaQuery.of(context).size.width > 1200?3:MediaQuery.of(context).size.width > 700?2:1)),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        width: 400,
                        height: 300,
                        decoration: BoxDecoration(
                          color: context.isDarkMode
                              ? Color(0xff363636)
                              : Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 1,
                              offset: Offset(2, 0),
                              spreadRadius: 0,
                              color: Colors.black.withOpacity(0.2),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                projects[index]["image"]!,
                                fit: BoxFit.fitWidth,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      projects[index]["tile"]!,
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: context.isDarkMode
                                              ? Colors.white
                                              : Colors.black),
                                    ),
                                    Text(
                                      projects[index]["description"]!,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 15.sp,
                                          color: context.isDarkMode
                                              ? AppColors.solidHeadingDarkMode
                                              : AppColors.darkContent),
                                    ),
                                    FittedBox(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "TechStack: ",
                                            style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w500,
                                                fontSize: 15.sp,
                                                color: context.isDarkMode
                                                    ? AppColors
                                                        .solidHeadingDarkMode
                                                    : AppColors.darkContent),
                                          ),
                                          const SizedBox(height: 50,),
                                          Text(
                                            projects[index]["techStack"]!,
                                            style: TextStyle(
                                                fontFamily: "Poppins",
                                                overflow: TextOverflow.fade,
                                                fontWeight: FontWeight.w300,
                                                fontSize: 15.sp,
                                                color: context.isDarkMode
                                                    ? AppColors
                                                        .solidHeadingDarkMode
                                                    : AppColors.darkContent),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          projects[index]["status"],
                                          style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15.sp,
                                              color: projects[index]
                                                          ["status"] ==
                                                      "in Progress"
                                                  ? context.isDarkMode
                                                      ? AppColors
                                                          .solidHeadingDarkMode
                                                      : AppColors.darkContent
                                                  : context.isDarkMode
                                                      ? AppColors.buttonSuccess
                                                      : AppColors.buttonText),
                                        ),
                                        GestureDetector(
                                          onTap: () async {
                                            await launchUrl(Uri.parse(
                                                projects[index]["link"]));
                                          },
                                          child: Text(
                                            "Code source",
                                            style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15.sp,
                                                color: context.isDarkMode
                                                    ? Colors.white
                                                    : Colors.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
