import 'controller/onboarding_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:yasir_s_application3/core/app_export.dart';
import 'package:yasir_s_application3/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class OnboardingThreeScreen extends GetWidget<OnboardingThreeController> {
  const OnboardingThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgBackground1,
                height: 460.v,
                width: 375.h,
              ),
              SizedBox(height: 64.v),
              Container(
                width: 286.h,
                margin: EdgeInsets.only(
                  left: 44.h,
                  right: 45.h,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_action_is_the".tr,
                        style: CustomTextStyles.headlineSmallIntegralCFRegular,
                      ),
                      TextSpan(
                        text: "msg_key_to_all_success".tr,
                        style: CustomTextStyles.headlineSmallIntegralCF,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 50.v),
              CustomElevatedButton(
                width: 185.h,
                text: "lbl_start_now".tr,
                rightIcon: Container(
                  margin: EdgeInsets.only(left: 8.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgChevronright,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                ),
              ),
              SizedBox(height: 56.v),
              SizedBox(
                height: 4.v,
                child: AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count: 3,
                  effect: ScrollingDotsEffect(
                    spacing: 10,
                    activeDotColor: theme.colorScheme.primary,
                    dotColor: appTheme.gray800,
                    dotHeight: 4.v,
                    dotWidth: 16.h,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
