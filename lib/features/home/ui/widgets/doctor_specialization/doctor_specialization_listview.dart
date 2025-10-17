import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabib_now/features/home/data/models/specializations_response_model.dart';
import 'package:tabib_now/features/home/logic/home_cubit.dart';
import 'package:tabib_now/features/home/ui/widgets/doctor_specialization/doctor_specialization_list_item.dart';

class DoctorSpecializationListview extends StatefulWidget {
  final List<SpecializationsData?> specializationDataList;

  const DoctorSpecializationListview({
    super.key,
    required this.specializationDataList,
  });

  @override
  State<DoctorSpecializationListview> createState() =>
      _DoctorSpecializationListviewState();
}

class _DoctorSpecializationListviewState
    extends State<DoctorSpecializationListview> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.specializationDataList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
              BlocProvider.of<HomeCubit>(context).getDoctorList(
                specializationId: widget.specializationDataList[index]!.id!,
              );
            },
            child: DoctorSpecializationListItem(
              index: index,
              selectedIndex: selectedIndex,
              icon: "assets/icons/general_doctor_icon.png",
              title:
                  widget.specializationDataList[index]!.name ??
                  "General Doctor",
            ),
          );
        },
      ),
    );
  }
}
