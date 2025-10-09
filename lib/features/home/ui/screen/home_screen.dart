import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabib_now/core/helpers/spacing.dart';
import 'package:tabib_now/features/home/ui/widgets/discover_banner.dart';
import 'package:tabib_now/features/home/ui/widgets/doctor_specialization/doctor_specialization_bar.dart';
import 'package:tabib_now/features/home/ui/widgets/home_top_bar.dart';
import 'package:tabib_now/features/home/ui/widgets/specializations_and_doctors_bloc_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 16.w),
            child: Column(
              children: [
                HomeTopBar(
                  name: "Ali",
                  welcomeMessage: "How Are you Today?",
                  newNotification: true,
                ),
                DiscoverBanner(),
                verticalSpace(24),
                DoctorSpecializationBar(),
                verticalSpace(16),
                SpecializationsAndDoctorsBlocBuilder(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
