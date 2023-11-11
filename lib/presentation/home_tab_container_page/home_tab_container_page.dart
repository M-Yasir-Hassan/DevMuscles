import 'controller/home_tab_container_controller.dart';
import 'models/home_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:yasir_s_application3/core/app_export.dart';
import 'package:yasir_s_application3/presentation/home_page/home_page.dart';

class HomeTabContainerPage extends StatelessWidget {
  HomeTabContainerPage({Key? key})
      : super(
          key: key,
        );

  HomeTabContainerController controller =
      Get.put(HomeTabContainerController(HomeTabContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnErrorContainer,
          child: Column(
            children: [
              SizedBox(height: 67.v),
              Expanded(
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: 652.v,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 24.h),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
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
                                        text: "lbl_sarah2".tr,
                                        style: CustomTextStyles
                                            .headlineLargeBold_1,
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(height: 2.v),
                                Text(
                                  "lbl_good_morning".tr,
                                  style: CustomTextStyles.bodyMedium15,
                                ),
                                SizedBox(height: 260.v),
                                _buildWorkoutCategoriesRow(),
                                SizedBox(height: 245.v),
                                Text(
                                  "lbl_new_workouts".tr,
                                  style: theme.textTheme.titleMedium,
                                ),
                              ],
                            ),
                          ),
                        ),
                        _buildCardWithTitleColumn(),
                        _buildTabview(),
                        _buildTabBarViewPager(),
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
  Widget _buildWorkoutCategoriesRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "msg_workout_categories".tr,
          style: theme.textTheme.titleMedium,
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 4.v),
          child: Text(
            "lbl_see_all".tr,
            style: CustomTextStyles.bodyMediumPrimary_1,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildCardWithTitleColumn() {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 24.h,
          top: 94.v,
          right: 24.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 1.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "msg_today_workout_plan".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 3.v,
                      bottom: 2.v,
                    ),
                    child: Text(
                      "lbl_mon_26_apr".tr,
                      style: CustomTextStyles.bodyMediumPrimary_1,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 11.v),
            SizedBox(
              height: 160.v,
              width: 327.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage160x327,
                    height: 160.v,
                    width: 327.h,
                    radius: BorderRadius.circular(
                      16.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.h,
                        vertical: 14.v,
                      ),
                      decoration: AppDecoration
                          .gradientOnPrimaryContainerToOnPrimaryContainer2
                          .copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder16,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: 88.v),
                          Text(
                            "msg_day_01_warm_up".tr,
                            style: theme.textTheme.titleMedium,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 11.v,
                                width: 2.h,
                                margin: EdgeInsets.symmetric(vertical: 3.v),
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.primary,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5.h),
                                child: Text(
                                  "msg_07_00_08_00_am".tr,
                                  style: CustomTextStyles.bodyMediumPrimary_1,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
      height: 28.v,
      width: 327.h,
      margin: EdgeInsets.only(bottom: 268.v),
      decoration: BoxDecoration(
        color: theme.colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(
          14.h,
        ),
      ),
      child: TabBar(
        controller: controller.tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.onError.withOpacity(1),
        labelStyle: TextStyle(
          fontSize: 13.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelColor: appTheme.whiteA700,
        unselectedLabelStyle: TextStyle(
          fontSize: 13.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w400,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.primary,
          borderRadius: BorderRadius.circular(
            14.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_beginner".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_intermediate".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_advance".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabBarViewPager() {
    return Container(
      margin: EdgeInsets.only(top: 384.v),
      height: 267.v,
      child: TabBarView(
        controller: controller.tabviewController,
        children: [
          HomePage(),
          HomePage(),
          HomePage(),
        ],
      ),
    );
  }
}
