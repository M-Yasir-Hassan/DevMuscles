import 'controller/notifications_controller.dart';import 'package:flutter/material.dart';import 'package:yasir_s_application3/core/app_export.dart';import 'package:yasir_s_application3/widgets/app_bar/appbar_leading_image.dart';import 'package:yasir_s_application3/widgets/app_bar/appbar_title.dart';import 'package:yasir_s_application3/widgets/app_bar/custom_app_bar.dart';import 'package:yasir_s_application3/widgets/custom_switch.dart';class NotificationsScreen extends GetWidget<NotificationsController> {const NotificationsScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 20.v), child: Column(children: [Divider(), SizedBox(height: 16.v), _buildProfileList1(), SizedBox(height: 18.v), _buildProfileList2(), Spacer(), SizedBox(height: 20.v), Container(width: 230.h, margin: EdgeInsets.only(left: 39.h, right: 40.h), child: RichText(text: TextSpan(children: [TextSpan(text: "msg_you_can_manage_your2".tr, style: theme.textTheme.bodyMedium), TextSpan(text: "lbl_phone_settings".tr, style: CustomTextStyles.bodyMediumPrimary)]), textAlign: TextAlign.center))])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 56.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftOnprimary, margin: EdgeInsets.only(left: 24.h, top: 12.v, bottom: 12.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarTitle(text: "lbl_notifications".tr)); } 
/// Section Widget
Widget _buildProfileList1() { return Column(children: [Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(bottom: 2.v), child: Text("msg_workout_reminders".tr, style: theme.textTheme.titleSmall)), Obx(() => CustomSwitch(value: controller.isSelectedSwitch.value, onChange: (value) {controller.isSelectedSwitch.value = value;}))]), SizedBox(height: 19.v), Divider()]); } 
/// Section Widget
Widget _buildProfileList2() { return Column(children: [Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 2.v), child: Text("msg_program_notifications".tr, style: theme.textTheme.titleSmall)), Obx(() => CustomSwitch(value: controller.isSelectedSwitch1.value, onChange: (value) {controller.isSelectedSwitch1.value = value;}))]), SizedBox(height: 19.v), Divider()]); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
