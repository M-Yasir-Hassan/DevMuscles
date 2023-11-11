import 'controller/sign_up_two_controller.dart';import 'models/sign_up_two_model.dart';import 'package:flutter/material.dart';import 'package:yasir_s_application3/core/app_export.dart';import 'package:yasir_s_application3/core/utils/validation_functions.dart';import 'package:yasir_s_application3/widgets/custom_elevated_button.dart';import 'package:yasir_s_application3/widgets/custom_icon_button.dart';import 'package:yasir_s_application3/widgets/custom_text_form_field.dart';import 'package:yasir_s_application3/domain/facebookauth/facebook_auth_helper.dart';
// ignore_for_file: must_be_immutable
class SignUpTwoPage extends StatelessWidget {SignUpTwoPage({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

SignUpTwoController controller = Get.put(SignUpTwoController(SignUpTwoModel().obs));

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Form(key: _formKey, child: Container(width: double.maxFinite, decoration: AppDecoration.fillOnErrorContainer, child: Column(children: [SizedBox(height: 137.v), Expanded(child: Padding(padding: EdgeInsets.symmetric(horizontal: 32.h), child: Column(children: [Align(alignment: Alignment.centerLeft, child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_hello".tr, style: theme.textTheme.headlineLarge), TextSpan(text: " "), TextSpan(text: "lbl_rookies".tr, style: CustomTextStyles.headlineLargeBold_1)]), textAlign: TextAlign.left)), SizedBox(height: 12.v), Align(alignment: Alignment.centerLeft, child: SizedBox(width: 207.h, child: Text("msg_enter_your_informations".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodySmallIntegralCF.copyWith(height: 1.60)))), Spacer(), _buildInputSection(), SizedBox(height: 20.v), Obx(() => CustomTextFormField(controller: controller.passwordController, hintText: "lbl_password".tr, hintStyle: CustomTextStyles.bodySmallPrimary, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, suffix: InkWell(onTap: () {controller.isShowPassword.value = !controller.isShowPassword.value;}, child: Container(margin: EdgeInsets.fromLTRB(30.h, 16.v, 13.h, 19.v), child: CustomImageView(imagePath: ImageConstant.imgSettings, height: 24.adaptSize, width: 24.adaptSize))), suffixConstraints: BoxConstraints(maxHeight: 59.v), validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "err_msg_please_enter_valid_password".tr;} return null;}, obscureText: controller.isShowPassword.value)), SizedBox(height: 22.v), _buildPasswordInputSection(), SizedBox(height: 79.v), _buildButtonsSection()])))]))))); } 
/// Section Widget
Widget _buildInputSection() { return Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 16.h), child: Text("msg_you_have_entered".tr, style: CustomTextStyles.bodySmallRedA40001))), SizedBox(height: 1.v), Padding(padding: EdgeInsets.only(left: 16.h, right: 13.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 4.v), child: Text("lbl_sarah145_mail".tr, style: theme.textTheme.titleMedium)), SingleChildScrollView(scrollDirection: Axis.horizontal, padding: EdgeInsets.only(bottom: 4.v), child: IntrinsicWidth(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 4.v), child: Text("lbl_sarah145_mail".tr, style: theme.textTheme.titleMedium)), Container(height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(bottom: 4.v), child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgClose, height: 24.adaptSize, width: 24.adaptSize, alignment: Alignment.center), CustomImageView(imagePath: ImageConstant.imgCloseWhiteA700, height: 6.adaptSize, width: 6.adaptSize, alignment: Alignment.center)]))]), SizedBox(height: 14.v), Divider()])))])), SizedBox(height: 14.v), Divider()]); } 
/// Section Widget
Widget _buildPasswordInputSection() { return Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 16.h), child: Text("lbl_password_again".tr, style: CustomTextStyles.bodySmallPrimary))), Padding(padding: EdgeInsets.only(left: 16.h, right: 13.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomImageView(imagePath: ImageConstant.imgFacebook, height: 8.v, width: 92.h, margin: EdgeInsets.only(top: 13.v, bottom: 3.v), onTap: () {onTapImgFacebook();}), CustomImageView(imagePath: ImageConstant.imgSettings, height: 24.adaptSize, width: 24.adaptSize)])), SizedBox(height: 18.v), Divider()]); } 
/// Section Widget
Widget _buildButtonsSection() { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomIconButton(height: 54.adaptSize, width: 54.adaptSize, padding: EdgeInsets.all(15.h), child: CustomImageView(imagePath: ImageConstant.imgApple)), Padding(padding: EdgeInsets.only(left: 21.h), child: CustomIconButton(height: 54.adaptSize, width: 54.adaptSize, padding: EdgeInsets.all(15.h), child: CustomImageView(imagePath: ImageConstant.imgGoogle))), Spacer(), CustomElevatedButton(width: 141.h, text: "lbl_sign_up".tr, rightIcon: Container(margin: EdgeInsets.only(left: 8.h), child: CustomImageView(imagePath: ImageConstant.imgChevronright, height: 24.adaptSize, width: 24.adaptSize)))]); } 
/// Performs a Facebook sign-in and returns a [FacebookUser] object.
///
/// If the sign-in is successful, the [onSuccess] callback will be called with
/// a TODO comment needed to be modified by you.
/// If the sign-in fails, the [onError] callback will be called with the error message.
///
/// Throws an exception if the Facebook sign-in process fails.
onTapImgFacebook() async  {             await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
              //TODO Actions to be performed after signin
              }).catchError((onError) {
              Get.snackbar('Error', onError.toString());
            });
             } 
 }
