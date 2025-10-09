import 'package:flutter/material.dart';
import 'package:tabib_now/features/home/data/models/specializations_response_model.dart';
import 'package:tabib_now/features/home/ui/widgets/doctor_recommendation/doctor_recommendation_list_item.dart';

class DoctorRecommendationListview extends StatelessWidget {
  final List<Doctors?> doctorDataList;

  const DoctorRecommendationListview({super.key, required this.doctorDataList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: doctorDataList.length,
      itemBuilder: (context, index) {
        return DoctorRecommendationListItem(doctorData: doctorDataList[index]);
      },
    );
  }
}
