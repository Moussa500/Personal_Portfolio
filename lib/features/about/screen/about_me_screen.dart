import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_portfolio/common/data/experiences.dart';
import 'package:personal_portfolio/common/widgets/details_text.dart';
import 'package:personal_portfolio/common/widgets/solid_header.dart';
import 'package:personal_portfolio/features/about/widgets/experience.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SolidHeader(size: 42, label: "About Me"),
            const SizedBox(
              height: 32,
            ),
            DetailsText(
                size: 18.sp,
                label:
                    "I am passionate about mobile technologies and emerging tech.\nAs a Flutter developer and video editor, currently pursuing a degree \nin Computer Science at the Faculty of Sciences of Sfax,\nI believe that growth comes through consistent practice and hands-on experience."),
            const SizedBox(
              height: 38,
            ),
            const SolidHeader(size: 42, label: "Professional Experiences"),
            const SizedBox(
              height: 25,
            ),
            Experience(
              experiences: professionalExperiences,
            ),
            const SizedBox(
              height: 25,
            ),
            const SolidHeader(size: 42, label: "Associative Experiences"),
            const SizedBox(
              height: 38,
            ),
            Experience(
              experiences: associativeExper,
            ),
            const SizedBox(
              height: 25,
            ),
            const SolidHeader(size: 42, label: "Education"),
            const SizedBox(
              height: 38,
            ),
            Experience(
              experiences: education,
            ),
          ],
        ),
      ),
    );
  }
}
