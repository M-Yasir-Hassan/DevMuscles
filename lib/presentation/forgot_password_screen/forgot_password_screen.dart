import 'controller/forgot_password_controller.dart';import 'package:flutter/material.dart';import 'package:yasir_s_application3/core/app_export.dart';import 'package:yasir_s_application3/core/utils/validation_functions.dart';import 'package:yasir_s_application3/widgets/app_bar/appbar_leading_image.dart';import 'package:yasir_s_application3/widgets/app_bar/custom_app_bar.dart';import 'package:yasir_s_application3/widgets/custom_elevated_button.dart';import 'package:yasir_s_application3/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends GetWidget<ForgotPasswordController> {ForgotPasswordScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 17.v), child: Column(children: [_buildForgotPassword(), SizedBox(height: 29.v), CustomElevatedButton(text: "lbl_send".tr, margin: EdgeInsets.symmetric(horizontal: 24.h)), SizedBox(height: 5.v)]))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: double.maxFinite, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftOnprimary, margin: EdgeInsets.fromLTRB(24.h, 12.v, 319.h, 12.v), onTap: () {onTapArrowLeft();})); } 
/// Section Widget
Widget _buildForgotPassword() { return SizedBox(height: 292.v, width: 311.h, child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.centerLeft, child: Column(mainAxisSize: MainAxisSize.min, children: [Text("msg_forgot_password".tr, style: CustomTextStyles.headlineSmallIntegralCFBold), SizedBox(height: 17.v), Align(alignment: Alignment.centerLeft, child: SizedBox(width: 207.h, child: Text("msg_enter_your_informations".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodySmallIntegralCF.copyWith(height: 1.60)))), SizedBox(height: 196.v), Text("lbl_try_another_way".tr, style: CustomTextStyles.labelLargePrimary)])), CustomTextFormField(width: 311.h, controller: controller.emailController, hintText: "lbl_email".tr, textInputAction: TextInputAction.done, textInputType: TextInputType.emailAddress, alignment: Alignment.center, validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;}, contentPadding: EdgeInsets.symmetric(horizontal: 16.h))])); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
