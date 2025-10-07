import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabib_now/core/theming/app_colors.dart';
import 'package:tabib_now/core/theming/app_styles.dart';

class HomeTopBar extends StatelessWidget {
  final String name;
  final String welcomeMessage;
  final bool newNotification;

  const HomeTopBar({
    super.key,
    required this.name,
    required this.welcomeMessage,
    required this.newNotification,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hi, $name!", style: AppStyles.font18DarkBlueBold),
            Text(welcomeMessage, style: AppStyles.font13GrayRegular),
          ],
        ),
        IconButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(AppColors.moreLighterGray),
          ),
          icon: Stack(
            alignment: Alignment.topRight,
            children: [
              Visibility(
                visible: newNotification,
                child: CircleAvatar(
                  radius: 5.r,
                  backgroundColor: Colors.redAccent,
                ),
              ),
              Icon(Icons.notifications_none_rounded, size: 24.r),
            ],
          ),
        ),
      ],
    );
  }
}
