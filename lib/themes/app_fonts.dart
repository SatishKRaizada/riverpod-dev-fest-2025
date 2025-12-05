import 'package:flutter/material.dart';
import 'package:dev_fest_2025/themes/app_color.dart';

class AppFonts {
  // regularText font styles from 12 to 22 font size
  static const TextStyle fontRegular12 = TextStyle(fontSize: 12);
  static const TextStyle fontRegular14 = TextStyle(fontSize: 14);
  static const TextStyle fontRegular16 = TextStyle(fontSize: 16);
  static const TextStyle fontRegular18 = TextStyle(fontSize: 18);
  static const TextStyle fontRegular20 = TextStyle(fontSize: 20);
  static const TextStyle fontRegular22 = TextStyle(fontSize: 22);

  // boldText font styles from 12 to 22 font size
  static const TextStyle fontBold12 = TextStyle(fontSize: 12, fontWeight: FontWeight.bold);
  static const TextStyle fontBold14 = TextStyle(fontSize: 14, fontWeight: FontWeight.bold);
  static const TextStyle fontBold16 = TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
  static const TextStyle fontBold18 = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
  static const TextStyle fontBold20 = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  static const TextStyle fontBold22 = TextStyle(fontSize: 22, fontWeight: FontWeight.bold);
  static const TextStyle fontBold30 = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  // headlineText font styles from 12 to 22 font size
  static const TextStyle fontHeadline12 = TextStyle(fontSize: 12);
  static const TextStyle fontHeadline14 = TextStyle(fontSize: 14);
  static const TextStyle fontHeadline16 = TextStyle(fontSize: 16);
  static const TextStyle fontHeadline18 = TextStyle(fontSize: 18);
  static const TextStyle fontHeadline20 = TextStyle(color: AppColor.blackColor, fontSize: 20);
  static const TextStyle fontHeadline22 = TextStyle(fontSize: 22);
  // lightFont font styles from 12 to 22 font size
  static const TextStyle fontLight12 = TextStyle(fontSize: 12);
  static const TextStyle fontLight14 = TextStyle(fontSize: 14);
  static const TextStyle fontLight16 = TextStyle(fontSize: 16);
  static const TextStyle fontLight18 = TextStyle(fontSize: 18);
  static const TextStyle fontLight20 = TextStyle(fontSize: 20);
  static const TextStyle fontLight22 = TextStyle(fontSize: 22);

  // Primary font styles from 12 to 22 font size
  static const TextStyle fontPrimary12 = TextStyle(fontSize: 12, color: AppColor.primaryColor);
  static const TextStyle fontPrimary14 = TextStyle(fontSize: 14, color: AppColor.primaryColor);
  static const TextStyle fontPrimary16 = TextStyle(fontSize: 16, color: AppColor.primaryColor);
  static const TextStyle fontPrimary18 = TextStyle(fontSize: 18, color: AppColor.primaryColor);
  static const TextStyle fontPrimary20 = TextStyle(fontSize: 20, color: AppColor.primaryColor);
  static const TextStyle fontPrimary22 = TextStyle(fontSize: 22, color: AppColor.primaryColor);

  // Primary bold fonts
  static const TextStyle fontPrimaryBold12 = TextStyle(
    fontSize: 12,
    color: AppColor.primaryColor,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle fontPrimaryBold14 = TextStyle(
    fontSize: 14,
    color: AppColor.primaryColor,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle fontPrimaryBold16 = TextStyle(
    fontSize: 16,
    color: AppColor.primaryColor,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle fontPrimaryBold18 = TextStyle(
    fontSize: 18,
    color: AppColor.primaryColor,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle fontPrimaryBold20 = TextStyle(
    fontSize: 20,
    color: AppColor.primaryColor,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle fontPrimaryBold22 = TextStyle(
    fontSize: 22,
    color: AppColor.primaryColor,
    fontWeight: FontWeight.bold,
  );
  // White font styles from 12 to 22 font size
  static const TextStyle fontWhite12 = TextStyle(fontSize: 12, color: AppColor.whiteColor);
  static const TextStyle fontWhite14 = TextStyle(fontSize: 14, color: AppColor.whiteColor);
  static const TextStyle fontWhite16 = TextStyle(fontSize: 16, color: AppColor.whiteColor);
  static const TextStyle fontWhite18 = TextStyle(fontSize: 18, color: AppColor.whiteColor);
  static const TextStyle fontWhite20 = TextStyle(fontSize: 20, color: AppColor.whiteColor);
  static const TextStyle fontWhite22 = TextStyle(fontSize: 22, color: AppColor.whiteColor);
  // White bold font styles from 12 to 22 font size
  static const TextStyle fontWhiteBold12 = TextStyle(
    fontSize: 12,
    color: AppColor.whiteColor,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle fontWhiteBold14 = TextStyle(
    fontSize: 14,
    color: AppColor.whiteColor,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle fontWhiteBold16 = TextStyle(
    fontSize: 16,
    color: AppColor.whiteColor,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle fontWhiteBold18 = TextStyle(
    fontSize: 18,
    color: AppColor.whiteColor,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle fontWhiteBold20 = TextStyle(
    fontSize: 20,
    color: AppColor.whiteColor,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle fontWhiteBold22 = TextStyle(
    fontSize: 22,
    color: AppColor.whiteColor,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle fontWhiteBold30 = TextStyle(
    fontSize: 30,
    color: AppColor.whiteColor,
    fontWeight: FontWeight.bold,
  );
  // black font styles from 12 to 22 font size
  static const TextStyle fontBoldBlack16 = TextStyle(fontSize: 16, color: AppColor.blackColor);

  static const TextStyle fontRegularBlack16 = TextStyle(fontSize: 16, color: AppColor.blackColor);

  // Appointment status fonts
  static const TextStyle fontConfirmed18 = TextStyle(color: AppColor.greenColor, fontSize: 22);
  static const TextStyle fontCompleted18 = TextStyle(color: AppColor.aquaColor, fontSize: 22);
  static const TextStyle fontLate18 = TextStyle(color: AppColor.yellowColor, fontSize: 22);
  static const TextStyle fontCancel18 = TextStyle(color: AppColor.primaryColor, fontSize: 22);
  static const TextStyle fontMissed18 = TextStyle(color: AppColor.redLightColor, fontSize: 22);

  // Transaction type
  static const TextStyle fontTransaction16 = TextStyle(color: AppColor.aquaColor, fontSize: 16);

  // Transaction type
  static const TextStyle fontBoldRed16 = TextStyle(color: AppColor.redColor, fontSize: 16);

  static const TextStyle fontRegularRed16 = TextStyle(color: AppColor.redColor, fontSize: 16);

  // TextStyle labels
  static const TextStyle fontLabel16 = TextStyle(fontSize: 16, color: AppColor.textTitleColorColor);
  static const TextStyle fontValue16 = TextStyle(fontSize: 16);
}
