import 'package:flutter/material.dart';
import 'package:dev_fest_2025/themes/app_color.dart';

class AppColorFiller {
  static const ColorFilter primaryFiller = ColorFilter.mode(AppColor.primaryColor, BlendMode.srcIn);
  static const ColorFilter whiteFiller = ColorFilter.mode(AppColor.whiteColor, BlendMode.srcIn);
  static const ColorFilter redFiller = ColorFilter.mode(AppColor.redColor, BlendMode.srcIn);
  static const ColorFilter yellowFiller = ColorFilter.mode(AppColor.yellowColor, BlendMode.srcIn);
  static const ColorFilter orangeFiller = ColorFilter.mode(AppColor.primaryColor, BlendMode.srcIn);
  static const ColorFilter blackFiller = ColorFilter.mode(AppColor.blackColor, BlendMode.srcIn);
  static const ColorFilter lightBlack = ColorFilter.mode(Colors.black54, BlendMode.srcIn);
  static const ColorFilter greenFiller = ColorFilter.mode(AppColor.greenColor, BlendMode.srcIn);
  static const ColorFilter greyFiller = ColorFilter.mode(AppColor.greyColor, BlendMode.srcIn);
  static const ColorFilter holdFiller = ColorFilter.mode(AppColor.holdColor, BlendMode.srcIn);
  static const ColorFilter readyFiller = ColorFilter.mode(AppColor.readyColor, BlendMode.srcIn);
  static const ColorFilter darkGreyFiller = ColorFilter.mode(AppColor.darkGreyColor, BlendMode.srcIn);
}
