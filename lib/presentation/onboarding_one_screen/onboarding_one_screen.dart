import 'controller/onboarding_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:yasir_s_application3/core/app_export.dart';

// ignore_for_file: must_be_immutable
class OnboardingOneScreen extends GetWidget<OnboardingOneController> {
  const OnboardingOneScreen({Key? key})
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
                imagePath: ImageConstant.imgBackground,
                height: 460.v,
                width: 375.h,
              ),
              SizedBox(height: 65.v),
              Container(
                width: 304.h,
                margin: EdgeInsets.only(
                  left: 35.h,
                  right: 36.h,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_meet_your_coach".tr,
                        style: CustomTextStyles.headlineSmallIntegralCFRegular,
                      ),
                      TextSpan(
                        text: "msg_start_your_journey".tr,
                        style: CustomTextStyles.headlineSmallIntegralCF,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Spacer(),
              SizedBox(height: 64.v),
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
            ],
          ),
        ),
      ),
    );
  }
}
