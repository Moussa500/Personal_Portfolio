import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:personal_portfolio/common/helpers/is_dark_mode.dart';
import 'package:personal_portfolio/config/theme/app_colors.dart';
import 'package:personal_portfolio/features/about/screen/about_me_screen.dart';
import 'package:personal_portfolio/features/contact/screen/contact_screen.dart';
import 'package:personal_portfolio/features/home/cubit/theme_cubit.dart';
import 'package:personal_portfolio/features/home/screen/home_page.dart';
import 'package:personal_portfolio/features/projects/projects_screen.dart';
import 'package:personal_portfolio/features/tech_stack/tech_stack_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  height: 150,
                  width: 150,
                ),
                Row(
                  children: [
                    _tabs(),
                    GestureDetector(
                      onTap: () async {
                        await launchUrl(
                            Uri.parse("https://github.com/Moussa500"));
                      },
                      child: SvgPicture.asset(
                        "assets/icons/github_vector.svg",
                        color: context.isDarkMode
                            ? Colors.white
                            : AppColors.darkContent,
                      ),
                    ),
                    const SizedBox(width: 20),
                    GestureDetector(
                      onTap: () async {
                        await launchUrl(Uri.parse(
                          "https://www.linkedin.com/in/mohamed-moussa-71776b259/",
                        ));
                      },
                      child: SvgPicture.asset(
                        "assets/vectors/linkedin_vector.svg",
                        color: context.isDarkMode
                            ? Colors.white
                            : AppColors.darkContent,
                      ),
                    ),
                    const SizedBox(width: 20),
                    GestureDetector(
                      onTap: () => context.read<ThemeCubit>().updateTheme(
                          context.isDarkMode ? ThemeMode.light : ThemeMode.dark),
                      child: Icon(
                        Icons.dark_mode,
                        size: 35,
                        color: context.isDarkMode
                            ? Colors.white
                            : AppColors.darkContent,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 219.w),
              child: TabBarView(controller: _tabController, children: [
                Home(),
                AboutMeScreen(),
                TechStackScreen(),
                ProjectsScreen(),
                ContactScreen(),
              ]),
            ),
          ),
        ],
      ),
    );
  }

  Text _tabLabel(String label) => Text(
        label,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20.sp,
        ),
      );
  Widget _tabs() {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .6,
      child: TabBar(
          controller: _tabController,
          dividerColor: Colors.transparent,
          labelColor: context.isDarkMode?Colors.white:const Color.fromARGB(255, 95, 94, 94),
          padding: const EdgeInsets.only(top: 40, left: 10, bottom: 25),
          tabs: [
            _tabLabel("Home"),
            _tabLabel("About"),
            _tabLabel("Tech Stack"),
            _tabLabel("Projects"),
            _tabLabel("Contact"),
          ]),
    );
  }
}
