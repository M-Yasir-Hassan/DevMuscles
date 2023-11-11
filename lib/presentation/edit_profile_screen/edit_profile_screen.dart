import 'controller/edit_profile_controller.dart';import 'package:flutter/material.dart';import 'package:yasir_s_application3/core/app_export.dart';import 'package:yasir_s_application3/widgets/app_bar/appbar_leading_image.dart';import 'package:yasir_s_application3/widgets/app_bar/appbar_title.dart';import 'package:yasir_s_application3/widgets/app_bar/custom_app_bar.dart';import 'package:yasir_s_application3/widgets/custom_elevated_button.dart';import 'package:yasir_s_application3/widgets/custom_icon_button.dart';class EditProfileScreen extends GetWidget<EditProfileController> {const EditProfileScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 22.v), child: Column(children: [SizedBox(height: 120.v, width: 136.h, child: Stack(alignment: Alignment.bottomRight, children: [CustomImageView(imagePath: ImageConstant.img59120x120, height: 120.adaptSize, width: 120.adaptSize, radius: BorderRadius.circular(60.h), alignment: Alignment.centerLeft), CustomIconButton(height: 46.adaptSize, width: 46.adaptSize, padding: EdgeInsets.all(11.h), decoration: IconButtonStyleHelper.fillOnPrimary, alignment: Alignment.bottomRight, child: CustomImageView(imagePath: ImageConstant.imgGroup49))])), SizedBox(height: 46.v), Divider(), SizedBox(height: 20.v), _buildInput(), SizedBox(height: 20.v), _buildInput(), SizedBox(height: 5.v)])), bottomNavigationBar: _buildSaveButton())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 56.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftOnprimary, margin: EdgeInsets.only(left: 24.h, top: 12.v, bottom: 12.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarTitle(text: "lbl_edit_profile".tr)); } 
/// Section Widget
Widget _buildSaveButton() { return CustomElevatedButton(text: "lbl_save".tr, margin: EdgeInsets.only(left: 56.h, right: 56.h, bottom: 32.v)); } 
/// Common widget
Widget _buildInput() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 16.h), child: Text("lbl_email".tr, style: CustomTextStyles.bodySmallPrimary)), SizedBox(height: 5.v), Padding(padding: EdgeInsets.only(left: 16.h), child: Text("msg_sarah145_mail_com".tr, style: theme.textTheme.titleMedium)), SizedBox(height: 13.v), Divider()]); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
