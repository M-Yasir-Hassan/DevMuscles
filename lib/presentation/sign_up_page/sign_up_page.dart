import 'controller/sign_up_controller.dart';
import 'models/sign_up_model.dart';
import 'package:flutter/material.dart';
import 'package:yasir_s_application3/core/app_export.dart';
import 'package:yasir_s_application3/core/utils/validation_functions.dart';
import 'package:yasir_s_application3/widgets/custom_elevated_button.dart';
import 'package:yasir_s_application3/widgets/custom_icon_button.dart';
import 'package:yasir_s_application3/widgets/custom_text_form_field.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  SignUpController controller = Get.put(SignUpController(SignUpModel().obs));

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
                SizedBox(height: 137.v),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32.h),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "lbl_hello".tr,
                                  style: theme.textTheme.headlineLarge,
                                ),
                                TextSpan(
                                  text: " ",
                                ),
                                TextSpan(
                                  text: "lbl_rookies".tr,
                                  style: CustomTextStyles.headlineLargeBold_1,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(height: 12.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: SizedBox(
                            width: 207.h,
                            child: Text(
                              "msg_enter_your_informations".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style:
                                  CustomTextStyles.bodySmallIntegralCF.copyWith(
                                height: 1.60,
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        CustomTextFormField(
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
                        SizedBox(height: 38.v),
                        CustomTextFormField(
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
                        SizedBox(height: 39.v),
                        _buildInputSection(),
                        SizedBox(height: 79.v),
                        _buildButtonsSection(),
                      ],
                    ),
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
  Widget _buildInputSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Text(
            "lbl_password_again".tr,
            style: theme.textTheme.bodyLarge,
          ),
        ),
        SizedBox(height: 15.v),
        Divider(),
      ],
    );
  }

  /// Section Widget
  Widget _buildButtonsSection() {
    return Row(
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
          width: 141.h,
          text: "lbl_sign_up".tr,
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
    );
  }
}
