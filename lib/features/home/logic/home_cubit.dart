import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabib_now/core/networking/api_result.dart';
import 'package:tabib_now/features/home/data/repos/home_repo.dart';
import 'package:tabib_now/features/home/logic/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo homeRepo;

  HomeCubit(this.homeRepo) : super(HomeState.initial());

  Future<void> emitSpecializationState() async {
    emit(HomeState.specializationLoading());
    final response = await homeRepo.getSpecialization();
    response.when(
      success: (specializationResponse) {
        emit(HomeState.specializationSuccess(specializationResponse));
      },
      failure: (error) {
        emit(HomeState.specializationError(error));
      },
    );
  }
}
