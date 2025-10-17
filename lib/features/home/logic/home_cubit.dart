import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabib_now/core/networking/api_error_handler.dart';
import 'package:tabib_now/core/networking/api_result.dart';
import 'package:tabib_now/features/home/data/models/specializations_response_model.dart';
import 'package:tabib_now/features/home/data/repos/home_repo.dart';
import 'package:tabib_now/features/home/logic/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo homeRepo;
  List<SpecializationsData?>? specializationList = [];

  HomeCubit(this.homeRepo) : super(HomeState.initial());

  Future<void> getSpecializations() async {
    emit(HomeState.specializationLoading());
    final response = await homeRepo.getSpecialization();
    response.when(
      success: (specializationResponse) {
        specializationList = specializationResponse.specializationDataList;
        getDoctorList(specializationId: specializationList!.first!.id!);
        emit(HomeState.specializationSuccess(specializationList));
      },
      failure: (error) {
        emit(HomeState.specializationError(error));
      },
    );
  }

  void getDoctorList({required int specializationId}) {
    List<Doctors?>? doctorList = getDoctorListBySpecializationId(
      specializationId,
    );

    if (doctorList != null && doctorList.isNotEmpty) {
      emit(HomeState.doctorsSuccess(doctorList));
    } else {
      emit(HomeState.doctorsError(ErrorHandler.handle("No doctors found")));
    }
  }

  /// returns doctors list by specialization id
  List<Doctors?>? getDoctorListBySpecializationId(int specializationId) {
    return specializationList
        ?.firstWhere((specialization) => specialization!.id == specializationId)
        ?.doctorsList;
  }
}
