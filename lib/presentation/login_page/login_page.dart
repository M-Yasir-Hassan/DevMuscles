import 'controller/login_controller.dart';
import 'models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:yasir_s_application3/core/app_export.dart';
import 'package:yasir_s_application3/core/utils/validation_functions.dart';
import 'package:yasir_s_application3/widgets/custom_elevated_button.dart';
import 'package:yasir_s_application3/widgets/custom_icon_button.dart';
import 'package:yasir_s_application3/widgets/custom_text_form_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  LoginController controller = Get.put(LoginController(LoginModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            decoration: AppDecoration.fillOnErrorContainer,
            child: Column(
              children: [
                SizedBox(height: 215.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 32.h,
                    right: 24.h,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 319.h,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl_welcome_back".tr,
                                style: CustomTextStyles
                                    .displaySmallIntegralCFWhiteA70036,
                              ),
                              TextSpan(
                                text: "lbl_sarah".tr,
                                style: CustomTextStyles
                                    .displaySmallIntegralCFWhiteA700,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(height: 122.v),
                      Padding(
                        padding: EdgeInsets.only(right: 8.h),
                        child: CustomTextFormField(
                          controller: controller.emailController,
                          hintText: "lbl_email".tr,
                          textInputType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == null ||
                                (!isValidEmail(value, isRequired: true))) {
                              return "err_msg_please_enter_valid_email".tr;
                            }
                            return null;
                          },
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 16.h),
                        ),
                      ),
                      SizedBox(height: 38.v),
                      Padding(
                        padding: EdgeInsets.only(right: 8.h),
                        child: CustomTextFormField(
                          controller: controller.passwordController,
                          hintText: "lbl_password".tr,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          validator: (value) {
                            if (value == null ||
                                (!isValidPassword(value, isRequired: true))) {
                              return "err_msg_please_enter_valid_password".tr;
                            }
                            return null;
                          },
                          obscureText: true,
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 16.h),
                        ),
                      ),
                      SizedBox(height: 20.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 18.h),
                          child: Text(
                            "lbl_forgot_password".tr,
                            style: CustomTextStyles.labelLargePrimary,
                          ),
                        ),
                      ),
                      SizedBox(height: 45.v),
                      _buildLoginButtons(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginButtons() {
    return Padding(
      padding: EdgeInsets.only(right: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 54.adaptSize,
            width: 54.adaptSize,
            padding: EdgeInsets.all(15.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgApple,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 21.h),
            child: CustomIconButton(
              height: 54.adaptSize,
              width: 54.adaptSize,
              padding: EdgeInsets.all(15.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgGoogle,
              ),
            ),
          ),
          Spacer(),
          CustomElevatedButton(
            width: 125.h,
            text: "lbl_login".tr,
            rightIcon: Container(
              margin: EdgeInsets.only(left: 8.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgChevronright,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
