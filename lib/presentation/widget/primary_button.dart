import 'package:booking_app/config/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButton extends StatelessWidget {
  PrimaryButton(
      {Key? key,
      this.type = PrimaryButtonType.type2,
      this.onPressed,
      required this.text})
      : super(key: key);
  final PrimaryButtonType type;
  final VoidCallback? onPressed;
  final String text;

  double height = 32.sp, width = 96.sp, vertical = 12.sp, horizontal = 8.sp;
  TextStyle? appFont;

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case PrimaryButtonType.type1:
        height = 24.sp;
        width = 112.sp;
        appFont = AppFont.componentSmall;
        vertical = 0;
        horizontal = 0;
        break;
      case PrimaryButtonType.type2:
        height = 32.sp;
        width = 120.sp;
        appFont = AppFont.componentMediumBold;
        vertical = 8.sp;
        horizontal = 12.sp;
        break;
      case PrimaryButtonType.type3:
        height = 40.sp;
        width = 128.sp;
        appFont = AppFont.componentLarge;
        vertical = 16.sp;
        horizontal = 8.sp;
        break;
      default:
        height = 32.sp;
        width = 120.sp;
        appFont = AppFont.componentMedium;
        vertical = 16.sp;
        horizontal = 8.sp;
    }

    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.ink01,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.sp))),
        onPressed: onPressed,
        child: Text(
          text,
          style: appFont!.copyWith(color: AppColor.ink06),
        ));
  }
}

enum PrimaryButtonType {
  type1,
  type2,
  type3,
}
