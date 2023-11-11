import '../controller/language_controller.dart';
import '../models/languagelist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yasir_s_application3/core/app_export.dart';
import 'package:yasir_s_application3/widgets/custom_checkbox_button.dart';

// ignore: must_be_immutable
class LanguagelistItemWidget extends StatelessWidget {
  LanguagelistItemWidget(
    this.languagelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  LanguagelistItemModel languagelistItemModelObj;

  var controller = Get.find<LanguageController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CustomCheckboxButton(
        width: 311.h,
        text: "lbl_english".tr,
        value: languagelistItemModelObj.english!.value,
        padding: EdgeInsets.symmetric(vertical: 1.v),
        textStyle: theme.textTheme.titleSmall,
        isRightCheck: true,
        onChange: (value) {
          languagelistItemModelObj.english!.value = value;
        },
      ),
    );
  }
}
