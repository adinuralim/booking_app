import 'package:booking_app/config/theme/app_color.dart';
import 'package:flutter/material.dart';

import '../../config/theme/app_font.dart';

class SecondaryButton extends StatelessWidget {
  SecondaryButton(
      {Key? key,
      this.type = SecondaryButtonType.type2,
      this.onPressed,
      required this.text})
      : super(key: key);
  final SecondaryButtonType type;
  final VoidCallback? onPressed;
  final String text;

  double height = 32, width = 96, vertical = 12, horizontal = 8;
  TextStyle? appFont;

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case SecondaryButtonType.type1:
        height = 24;
        width = 112;
        appFont = AppFont.componentSmall;
        vertical = 0;
        horizontal = 0;
        break;
      case SecondaryButtonType.type2:
        height = 32;
        width = 120;
        appFont = AppFont.componentMediumBold;
        vertical = 8;
        horizontal = 12;
        break;
      case SecondaryButtonType.type3:
        height = 40;
        width = 128;
        appFont = AppFont.componentLarge;
        vertical = 16;
        horizontal = 8;
        break;
      default:
        height = 32;
        width = 120;
        appFont = AppFont.componentMedium;
        vertical = 16;
        horizontal = 8;
    }

    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            side: BorderSide(width: 1, color: AppColor.ink01),
            backgroundColor: AppColor.ink06,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
        onPressed: onPressed,
        child: Text(
          text,
          style: appFont!.copyWith(color: AppColor.ink01),
        ));
  }
}

enum SecondaryButtonType {
  type1,
  type2,
  type3,
}
