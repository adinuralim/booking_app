import 'package:booking_app/config/config.dart';
import 'package:flutter/material.dart';

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

  double height = 32, width = 96, vertical = 12, horizontal = 8;
  TextStyle? appFont;

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case PrimaryButtonType.type1:
        height = 24;
        width = 112;
        appFont = AppFont.componentSmall;
        vertical = 0;
        horizontal = 0;
        break;
      case PrimaryButtonType.type2:
        height = 32;
        width = 120;
        appFont = AppFont.componentMediumBold;
        vertical = 8;
        horizontal = 12;
        break;
      case PrimaryButtonType.type3:
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

    return SizedBox(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.ink01,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4))),
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
