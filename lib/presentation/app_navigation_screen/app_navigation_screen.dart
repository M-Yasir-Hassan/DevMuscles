import 'controller/app_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:yasir_s_application3/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "Splash".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Onboarding One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Onboarding Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Onboarding Three".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Gender".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.genderScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Gender Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.genderTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Age".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.ageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Weight".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.weightScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Height".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.heightScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Goal".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.goalScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Activity Level".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.activityLevelScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign Up Two - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.signUpTwoTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Forgot Password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.forgotPasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Verification".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.verificationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Video Pause".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.videoPauseScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Appointment".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.appointmentScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Payment".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.paymentScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Edit Card".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.editCardScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Add New Card".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addNewCardScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Payment Completed".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.paymentCompletedScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Video".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.videoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Write a Review".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.writeAReviewScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Fitness Instructors".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.fitnessInstructorsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Reviews - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.reviewsTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Home - Container".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Workout Plan Detail".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.workoutPlanDetailScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Workout Categories - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.workoutCategoriesTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Subscription".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.subscriptionScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Pro Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.proProfileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Edit Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.editProfileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Privacy Policy".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.privacyPolicyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Settings".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.settingsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Units of Measure".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.unitsOfMeasureScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Notifications".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.notificationsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Language".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.languageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Language Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.languageTwoScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
