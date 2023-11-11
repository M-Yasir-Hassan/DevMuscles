import 'controller/privacy_policy_controller.dart';import 'package:flutter/material.dart';import 'package:yasir_s_application3/core/app_export.dart';import 'package:yasir_s_application3/widgets/app_bar/appbar_leading_image.dart';import 'package:yasir_s_application3/widgets/app_bar/appbar_title.dart';import 'package:yasir_s_application3/widgets/app_bar/custom_app_bar.dart';class PrivacyPolicyScreen extends GetWidget<PrivacyPolicyController> {const PrivacyPolicyScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 19.v), child: Container(width: 307.h, margin: EdgeInsets.only(left: 32.h, right: 35.h), child: RichText(text: TextSpan(children: [TextSpan(text: "msg_lorem_ipsum_dolor2".tr, style: theme.textTheme.titleSmall), TextSpan(text: "msg_consectetur_adipiscing".tr, style: CustomTextStyles.bodyMediumInterGray400.copyWith(height: 1.40)), TextSpan(text: "msg_lorem_ipsum_dolor3".tr, style: CustomTextStyles.bodyMediumInterBluegray100)]), textAlign: TextAlign.left)))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 56.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftOnprimary, margin: EdgeInsets.only(left: 24.h, top: 12.v, bottom: 12.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarTitle(text: "lbl_privacy_policy".tr)); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
