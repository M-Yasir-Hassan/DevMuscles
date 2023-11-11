import 'controller/video_pause_controller.dart';import 'package:flutter/material.dart';import 'package:yasir_s_application3/core/app_export.dart';class VideoPauseScreen extends GetWidget<VideoPauseController> {const VideoPauseScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: SizedBox(height: mediaQueryData.size.height, width: double.maxFinite, child: Stack(alignment: Alignment.bottomRight, children: [Align(alignment: Alignment.center, child: Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage(ImageConstant.imgBackScreen), fit: BoxFit.cover)), child: Container(padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 32.v), decoration: AppDecoration.fillOnError, child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgArrowLeftOnerror, height: 32.adaptSize, width: 32.adaptSize, onTap: () {onTapImgArrowLeft();}), Spacer(), _buildPlayerSection()])))), _buildRecommendedSection()])))); } 
/// Section Widget
Widget _buildPlayerSection() { return SizedBox(height: 123.v, width: 327.h, child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.bottomCenter, child: Padding(padding: EdgeInsets.fromLTRB(23.h, 79.v, 23.h, 19.v), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgRefresh, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(top: 1.v)), CustomImageView(imagePath: ImageConstant.imgRewind, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(left: 30.h, top: 1.v)), Spacer(), CustomImageView(imagePath: ImageConstant.imgPlay, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(top: 1.v)), CustomImageView(imagePath: ImageConstant.imgMute, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(left: 30.h))]))), Align(alignment: Alignment.center, child: SizedBox(height: 123.v, width: 327.h, child: Stack(alignment: Alignment.topCenter, children: [CustomImageView(imagePath: ImageConstant.imgPlayWhiteA70064x64, height: 64.adaptSize, width: 64.adaptSize, alignment: Alignment.bottomCenter), Align(alignment: Alignment.topCenter, child: Column(mainAxisSize: MainAxisSize.min, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 1.h), child: Text("msg_lower_body_strength".tr, style: theme.textTheme.titleMedium))), SizedBox(height: 7.v), Container(height: 10.v, width: 327.h, decoration: BoxDecoration(color: theme.colorScheme.onErrorContainer, borderRadius: BorderRadius.circular(5.h)), child: ClipRRect(borderRadius: BorderRadius.circular(5.h), child: LinearProgressIndicator(value: 0.33, backgroundColor: theme.colorScheme.onErrorContainer, valueColor: AlwaysStoppedAnimation<Color>(theme.colorScheme.primary)))), SizedBox(height: 5.v), Padding(padding: EdgeInsets.only(left: 1.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_04_35".tr, style: theme.textTheme.bodyMedium), Text("lbl_15_00".tr, style: theme.textTheme.bodyMedium)]))]))])))])); } 
/// Section Widget
Widget _buildRecommendedSection() { return Align(alignment: Alignment.bottomRight, child: Padding(padding: EdgeInsets.only(bottom: 194.v), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_recommended".tr, style: theme.textTheme.titleMedium), SizedBox(height: 13.v), Row(children: [SizedBox(height: 160.v, width: 260.h, child: Stack(alignment: Alignment.centerRight, children: [CustomImageView(imagePath: ImageConstant.imgImage, height: 160.v, width: 260.h, radius: BorderRadius.circular(16.h), alignment: Alignment.center), Align(alignment: Alignment.centerRight, child: SingleChildScrollView(scrollDirection: Axis.horizontal, padding: EdgeInsets.only(left: 21.h), child: IntrinsicWidth(child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(top: 103.v, bottom: 12.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_wake_up_call".tr, style: theme.textTheme.titleMedium), SizedBox(height: 2.v), Row(crossAxisAlignment: CrossAxisAlignment.start, children: [Container(height: 11.v, width: 2.h, margin: EdgeInsets.only(top: 1.v, bottom: 5.v), decoration: BoxDecoration(color: theme.colorScheme.primary)), Padding(padding: EdgeInsets.only(left: 5.h), child: Text("msg_04_workouts_for".tr, style: CustomTextStyles.bodyMediumPrimary_1))])])), Container(height: 160.v, width: 260.h, margin: EdgeInsets.only(left: 88.h), child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgImage160x260, height: 160.v, width: 260.h, radius: BorderRadius.circular(16.h), alignment: Alignment.center), Align(alignment: Alignment.center, child: Container(height: 160.v, width: 260.h, decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.h), gradient: LinearGradient(begin: Alignment(0.5, 0), end: Alignment(0.5, 1), colors: [theme.colorScheme.onPrimaryContainer, theme.colorScheme.onPrimaryContainer])))), Align(alignment: Alignment.bottomLeft, child: Padding(padding: EdgeInsets.only(left: 23.h, bottom: 13.v), child: Text("msg_06_workouts_for".tr, style: CustomTextStyles.bodyMediumPrimary_1)))]))]))))])), Container(margin: EdgeInsets.only(left: 16.h), padding: EdgeInsets.symmetric(vertical: 18.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 82.v), Align(alignment: Alignment.centerRight, child: Text("msg_drill_essentials".tr, style: theme.textTheme.titleMedium)), SizedBox(height: 6.v), Container(height: 11.v, width: 2.h, margin: EdgeInsets.only(left: 16.h), decoration: BoxDecoration(color: theme.colorScheme.primary))]))])]))); } 

/// Navigates to the previous screen.
onTapImgArrowLeft() { Get.back(); } 
 }
