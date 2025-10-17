import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabib_now/core/networking/api_error_handler.dart';
import 'package:tabib_now/features/home/logic/home_cubit.dart';
import 'package:tabib_now/features/home/logic/home_state.dart';
import 'package:tabib_now/features/home/ui/widgets/doctor_recommendation/doctor_recommendation_listview.dart';

class DoctorRecommendationBlocBuilder extends StatelessWidget {
  const DoctorRecommendationBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
      current is DoctorsSuccess ||
          current is DoctorsError,
      builder: (context, state) {
        return state.maybeWhen(
          doctorsSuccess: (data) => setupSuccess(data),
          doctorsError: (error) => setupError(error),
          orElse: () => SizedBox(),
        );
      },
    );
  }


  Widget setupSuccess(data) {
    return
      DoctorRecommendationListview(
        doctorDataList: data,
      );
  }

  Widget setupError(ErrorHandler error) {
    return Text(error.apiErrorModel.message!);
  }
}
