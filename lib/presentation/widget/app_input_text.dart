import 'package:booking_app/config/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppInputText extends StatefulWidget {
  const AppInputText({Key? key, required this.label, this.controller})
      : super(key: key);

  final TextEditingController? controller;
  final String label;

  @override
  State<AppInputText> createState() => _AppInputTextState();
}

class _AppInputTextState extends State<AppInputText> {
  late final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: AppDimen.h40,
        child: TextFormField(
          controller: widget.controller,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: AppDimen.h16),
              hintText: widget.label,
              hintStyle:
                  AppFont.componentMedium.copyWith(color: AppColor.ink01),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0.w))),
        ));
  }
}
