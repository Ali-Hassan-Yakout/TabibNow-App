import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabib_now/features/home/data/models/specializations_response_model.dart';
import 'package:tabib_now/features/home/ui/widgets/doctor_specialization/doctor_specialization_list_item.dart';

class DoctorSpecializationListview extends StatelessWidget {
  final List<SpecializationsData?> specializationDataList;

  const DoctorSpecializationListview({
    super.key,
    required this.specializationDataList,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 86.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: specializationDataList.length,
        itemBuilder: (context, index) {
          return DoctorSpecializationListItem(
            index: index,
            icon: "assets/icons/general_doctor_icon.png",
            title: specializationDataList[index]!.name ?? "General Doctor",
          );
        },
      ),
    );
  }
}
