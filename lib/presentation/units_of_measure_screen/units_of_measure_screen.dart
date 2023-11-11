import 'controller/units_of_measure_controller.dart';import 'package:flutter/material.dart';import 'package:yasir_s_application3/core/app_export.dart';import 'package:yasir_s_application3/widgets/app_bar/appbar_leading_image.dart';import 'package:yasir_s_application3/widgets/app_bar/appbar_title.dart';import 'package:yasir_s_application3/widgets/app_bar/custom_app_bar.dart';import 'package:yasir_s_application3/widgets/custom_radio_button.dart';class UnitsOfMeasureScreen extends GetWidget<UnitsOfMeasureController> {const UnitsOfMeasureScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 20.v), child: Column(children: [Divider(), SizedBox(height: 16.v), _buildProfileList1(), SizedBox(height: 19.v), _buildProfileList2(), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 56.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftOnprimary, margin: EdgeInsets.only(left: 24.h, top: 12.v, bottom: 12.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarTitle(text: "msg_units_of_measure".tr)); } 
/// Section Widget
Widget _buildProfileList1() { return Column(children: [Obx(() => CustomRadioButton(width: 311.h, text: "lbl_metric".tr, value: "lbl_metric".tr, groupValue: controller.radioGroup.value, isRightCheck: true, onChange: (value) {controller.radioGroup.value = value;})), SizedBox(height: 18.v), Divider()]); } 
/// Section Widget
Widget _buildProfileList2() { return Column(children: [Obx(() => CustomRadioButton(width: 311.h, text: "lbl_imperial".tr, value: "lbl_imperial".tr, groupValue: controller.radioGroup1.value, padding: EdgeInsets.symmetric(vertical: 1.v), isRightCheck: true, onChange: (value) {controller.radioGroup1.value = value;})), SizedBox(height: 18.v), Divider()]); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
