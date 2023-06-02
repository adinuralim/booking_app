import 'package:booking_app/config/config.dart';
import 'package:booking_app/utils/extension/double_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButton extends StatelessWidget {
  PrimaryButton(
      {Key? key,
      this.type = PrimaryButtonType.type2,
      this.onPressed,
      this.width,
      required this.text})
      : super(key: key);
  final PrimaryButtonType type;
  final VoidCallback? onPressed;
  final String text;

  double? width;
  TextStyle? appFont;

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case PrimaryButtonType.type1:
        width = width ?? 112;
        appFont = AppFont.componentSmall;
        break;
      case PrimaryButtonType.type2:
        width = width ?? 120;
        appFont = AppFont.componentMediumBold;
        break;
      case PrimaryButtonType.type3:
        width = width ?? 128;
        appFont = AppFont.componentLarge;
        break;
      default:
        width = double.infinity;
        appFont = AppFont.componentMedium;
    }

    return SizedBox(
        width: width,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.ink01,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppDimen.w4))),
            onPressed: onPressed,
            child: Text(
              text,
              style: appFont!.copyWith(color: AppColor.ink06),
            )));
  }
}

enum PrimaryButtonType {
  type1,
  type2,
  type3,
}
