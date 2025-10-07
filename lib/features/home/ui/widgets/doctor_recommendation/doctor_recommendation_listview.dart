import 'package:flutter/material.dart';
import 'package:tabib_now/features/home/ui/widgets/doctor_recommendation/doctor_recommendation_list_item.dart';

class DoctorRecommendationListview extends StatelessWidget {
  const DoctorRecommendationListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 4,
      itemBuilder: (context, index) {
        return DoctorRecommendationListItem();
      },
    );
  }
}
