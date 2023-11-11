import 'controller/login_two_controller.dart';
import 'models/login_two_model.dart';
import 'package:flutter/material.dart';
import 'package:yasir_s_application3/core/app_export.dart';
import 'package:yasir_s_application3/widgets/custom_checkbox_button.dart';
import 'package:yasir_s_application3/widgets/custom_elevated_button.dart';
import 'package:yasir_s_application3/widgets/custom_icon_button.dart';
import 'package:yasir_s_application3/widgets/custom_text_form_field.dart';

class LoginTwoPage extends StatelessWidget {
  LoginTwoPage({Key? key})
      : super(
          key: key,
        );

  LoginTwoController controller =
      Get.put(LoginTwoController(LoginTwoModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
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
                    SizedBox(height: 105.v),
                    _buildInputSection(),
                    SizedBox(height: 21.v),
                    Padding(
                      padding: EdgeInsets.only(right: 8.h),
                      child: CustomTextFormField(
                        controller: controller.showController,
                        hintText: "lbl_sw1998".tr,
                        hintStyle: theme.textTheme.titleMedium!,
                        textInputAction: TextInputAction.done,
                        suffix: Container(
                          margin: EdgeInsets.fromLTRB(30.h, 16.v, 13.h, 19.v),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgShow,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                          ),
                        ),
                        suffixConstraints: BoxConstraints(
                          maxHeight: 59.v,
                        ),
                        contentPadding: EdgeInsets.only(
                          left: 16.h,
                          top: 13.v,
                          bottom: 13.v,
                        ),
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
                    _buildButtonsSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildInputSection() {
    return Padding(
      padding: EdgeInsets.only(right: 8.h),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Text(
                "lbl_email".tr,
                style: CustomTextStyles.bodySmallPrimary,
              ),
            ),
          ),
          SizedBox(height: 1.v),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              right: 13.h,
            ),
            child: Obx(
              () => CustomCheckboxButton(
                width: 282.h,
                text: "msg_sarah145_mail_com".tr,
                value: controller.sarahmailcom.value,
                isRightCheck: true,
                onChange: (value) {
                  controller.sarahmailcom.value = value;
                },
              ),
            ),
          ),
          SizedBox(height: 14.v),
          Divider(),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildButtonsSection() {
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
