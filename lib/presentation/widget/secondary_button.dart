import 'package:booking_app/config/config.dart';
import 'package:flutter/material.dart';

import '../../config/theme/app_font.dart';

class SecondaryButton extends StatelessWidget {
  SecondaryButton(
      {Key? key,
      this.type = SecondaryButtonType.type2,
      this.onPressed,
      this.width,
      required this.text})
      : super(key: key);
  final SecondaryButtonType type;
  final VoidCallback? onPressed;
  final String text;

  double? width;
  TextStyle? appFont;

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case SecondaryButtonType.type1:
        width = width ?? 112;
        appFont = AppFont.componentSmall;
        break;
      case SecondaryButtonType.type2:
        width = width ?? 120;
        appFont = AppFont.componentMediumBold;
        break;
      case SecondaryButtonType.type3:
        width = width ?? 128;
        appFont = AppFont.componentLarge;
        break;
      default:
        width = 120;
        appFont = AppFont.componentMedium;
    }

    return SizedBox(
        width: width,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                side: BorderSide(width: 1, color: AppColor.ink01),
                backgroundColor: AppColor.ink06,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppDimen.w4))),
            onPressed: onPressed,
            child: Text(
              text,
              style: appFont!.copyWith(color: AppColor.ink01),
            )));
  }
}

enum SecondaryButtonType {
  type1,
  type2,
  type3,
}
