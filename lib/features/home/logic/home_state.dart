import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tabib_now/core/networking/api_error_handler.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState<T> with _$HomeState<T> {
  const factory HomeState.initial() = _Initial;

  //Specialization
  const factory HomeState.specializationLoading() = SpecializationLoading;

  const factory HomeState.specializationSuccess(T data) = SpecializationSuccess<T>;

  const factory HomeState.specializationError(ErrorHandler errorHandler) = SpecializationError;

  //Doctors

  const factory HomeState.doctorsSuccess(T data) = DoctorsSuccess<T>;

  const factory HomeState.doctorsError(ErrorHandler errorHandler) = DoctorsError;
}
