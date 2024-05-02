import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_media_app/config/theme/app_color.dart';

class TextStyles {
  static TextStyle title = TextStyle(
    fontSize: 39.sp,
    color: AppColor.black,
    fontWeight: FontWeight.bold,
  );

  static TextStyle h1 = TextStyle(
    fontSize: 31.sp,
    color: AppColor.black,
    fontWeight: FontWeight.bold,
  );

  static TextStyle h2Bold = TextStyle(
    fontSize: 25.sp,
    color: AppColor.black,
    fontWeight: FontWeight.bold,
  );

  static TextStyle h2Regular = TextStyle(
    fontSize: 31.sp,
    color: AppColor.black,
    fontWeight: FontWeight.normal,
  );

  static TextStyle h3 = TextStyle(
    fontSize: 20.sp,
    color: AppColor.black,
    fontWeight: FontWeight.normal,
  );

  static TextStyle bodyRegular = TextStyle(
    fontSize: 16.sp,
    color: AppColor.black,
    fontWeight: FontWeight.normal,
  );

  static TextStyle bodySmall = TextStyle(
    fontSize: 14.sp,
    color: AppColor.black,
    fontWeight: FontWeight.normal,
  );

  static TextStyle captions = TextStyle(
    fontSize: 20.sp,
    color: AppColor.captionsColor,
    fontWeight: FontWeight.normal,
  );

  static TextStyle buttonRegular = TextStyle(
    fontSize: 16.sp,
    color: AppColor.black,
    fontWeight: FontWeight.normal,
  );

  static TextStyle buttonLarge = TextStyle(
    fontSize: 20.sp,
    color: AppColor.black,
    fontWeight: FontWeight.normal,
  );
}
