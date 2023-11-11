import 'controller/settings_controller.dart';import 'package:flutter/material.dart';import 'package:yasir_s_application3/core/app_export.dart';import 'package:yasir_s_application3/widgets/app_bar/appbar_leading_image.dart';import 'package:yasir_s_application3/widgets/app_bar/appbar_title.dart';import 'package:yasir_s_application3/widgets/app_bar/custom_app_bar.dart';class SettingsScreen extends GetWidget<SettingsController> {const SettingsScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 20.v), child: Column(children: [Divider(), SizedBox(height: 17.v), _buildProfileList(), SizedBox(height: 19.v), _buildProfileList(), SizedBox(height: 19.v), _buildProfileList(), SizedBox(height: 19.v), _buildProfileList(), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 56.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftOnprimary, margin: EdgeInsets.only(left: 24.h, top: 12.v, bottom: 12.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarTitle(text: "lbl_settings".tr)); } 
/// Common widget
Widget _buildProfileList() { return Column(children: [Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.symmetric(vertical: 1.v), child: Text("lbl_notifications".tr, style: theme.textTheme.titleSmall)), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 24.adaptSize, width: 24.adaptSize)]), SizedBox(height: 18.v), Divider()]); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
