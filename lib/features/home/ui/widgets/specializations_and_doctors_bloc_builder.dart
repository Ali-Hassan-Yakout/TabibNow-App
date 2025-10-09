import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabib_now/core/helpers/spacing.dart';
import 'package:tabib_now/core/networking/api_error_handler.dart';
import 'package:tabib_now/features/home/data/models/specializations_response_model.dart';
import 'package:tabib_now/features/home/logic/home_cubit.dart';
import 'package:tabib_now/features/home/logic/home_state.dart';
import 'package:tabib_now/features/home/ui/widgets/doctor_recommendation/doctor_recommendation_bar.dart';
import 'package:tabib_now/features/home/ui/widgets/doctor_recommendation/doctor_recommendation_listview.dart';
import 'package:tabib_now/features/home/ui/widgets/doctor_specialization/doctor_specialization_listview.dart';

class SpecializationsAndDoctorsBlocBuilder extends StatelessWidget {
  const SpecializationsAndDoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationLoading ||
          current is SpecializationSuccess ||
          current is SpecializationError,
      builder: (context, state) {
        return state.maybeWhen(
          specializationLoading: () => setupLoading(),
          specializationSuccess: (data) => setupSuccess(data),
          specializationError: (error) => setupError(error),
          orElse: () => SizedBox(),
        );
      },
    );
  }

  Widget setupLoading() {
    return SizedBox(
      height: 100.h,
      child: Center(child: CircularProgressIndicator()),
    );
  }

  Widget setupSuccess(data) {
    List<SpecializationsData?> specializationDataList =
        data.specializationDataList;
    return Column(
      children: [
        DoctorSpecializationListview(
          specializationDataList: specializationDataList,
        ),
        verticalSpace(23),
        DoctorRecommendationBar(),
        verticalSpace(16),
        DoctorRecommendationListview(
          doctorDataList: specializationDataList[0]!.doctorsList!,
        ),
      ],
    );
  }

  Widget setupError(ErrorHandler error) {
    return Text(error.apiErrorModel.message!);
  }
}
