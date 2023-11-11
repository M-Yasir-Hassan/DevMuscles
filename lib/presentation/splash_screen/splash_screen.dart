import 'controller/splash_controller.dart';import 'package:flutter/material.dart';import 'package:yasir_s_application3/core/app_export.dart';class SplashScreen extends GetWidget<SplashController> {const SplashScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 49.h), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 51.v), CustomImageView(imagePath: ImageConstant.imgMaskGroup, height: 116.v, width: 117.h), SizedBox(height: 33.v), SizedBox(width: 275.h, child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_dev".tr, style: CustomTextStyles.integralCFPrimary), TextSpan(text: "lbl_muscles".tr, style: CustomTextStyles.displayMediumIntegralCFPrimary)]), textAlign: TextAlign.center))])))); } 
 }
