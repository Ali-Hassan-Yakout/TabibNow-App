import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabib_now/core/theming/app_colors.dart';
import 'package:tabib_now/core/theming/app_styles.dart';

class AppTextButton extends StatelessWidget {
  final double? borderRadius;
  final double? height;
  final double? width;
  final double? verticalPadding;
  final double? horizontalPadding;
  final Color? backgroundColor;
  final String buttonText;
  final TextStyle? buttonTextStyle;
  final VoidCallback? onPressed;

  const AppTextButton({
    super.key,
    this.borderRadius,
    this.height,
    this.backgroundColor,
    required this.buttonText,
    this.width,
    this.buttonTextStyle,
    this.onPressed,
    this.verticalPadding,
    this.horizontalPadding,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(
          backgroundColor ?? AppColors.mainBlue,
        ),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        fixedSize: WidgetStateProperty.all(
          Size(width?.w ?? double.maxFinite, height?.h ?? 52.h),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(
              borderRadius?.r ?? 16.r,
            ),
          ),
        ),
        padding: WidgetStateProperty.all<EdgeInsets>(
          EdgeInsets.symmetric(
            horizontal: horizontalPadding?.w ?? 12.w,
            vertical: verticalPadding?.h ?? 14.h,
          ),
        ),
      ),
      child: Text(
        buttonText,
        style: buttonTextStyle ?? AppStyles.font16WhiteSemiBold,
      ),
    );
  }
}
