import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabib_now/core/helpers/spacing.dart';
import 'package:tabib_now/core/networking/api_error_handler.dart';
import 'package:tabib_now/features/home/logic/home_cubit.dart';
import 'package:tabib_now/features/home/logic/home_state.dart';
import 'package:tabib_now/features/home/ui/widgets/doctor_recommendation/doctor_recommendation_shimmer.dart';
import 'package:tabib_now/features/home/ui/widgets/doctor_specialization/doctor_specialization_listview.dart';
import 'package:tabib_now/features/home/ui/widgets/doctor_specialization/doctor_specialization_shimmer.dart';

class DoctorSpecializationBlocBuilder extends StatelessWidget {
  const DoctorSpecializationBlocBuilder({super.key});

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
    return Column(
      children: [
        DoctorSpecializationShimmer(),
        verticalSpace(23),
        DoctorRecommendationShimmer(),
      ],
    );
  }

  Widget setupSuccess(data) {
    return Column(
      children: [DoctorSpecializationListview(specializationDataList: data)],
    );
  }

  Widget setupError(ErrorHandler error) {
    return Text(error.apiErrorModel.message!);
  }
}
