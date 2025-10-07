import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabib_now/features/home/ui/widgets/doctor_specialization/doctor_specialization_list_item.dart';

class DoctorSpecializationListview extends StatelessWidget {
  const DoctorSpecializationListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 86.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return DoctorSpecializationListItem(
            index: index,
            icon: "assets/icons/general_doctor_icon.png",
            title: "General",
          );
        },
      ),
    );
  }
}
