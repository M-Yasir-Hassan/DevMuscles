import 'controller/home_controller.dart';
import 'models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:yasir_s_application3/core/app_export.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key})
      : super(
          key: key,
        );

  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: _buildScrollView(),
      ),
    );
  }

  /// Section Widget
  Widget _buildScrollView() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 384.v),
        child: Column(
          children: [
            SizedBox(height: 16.v),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: IntrinsicWidth(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 160.v,
                              width: 319.h,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgImage160x319,
                                    height: 160.v,
                                    width: 319.h,
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
                                        vertical: 13.v,
                                      ),
                                      decoration: AppDecoration
                                          .gradientOnPrimaryContainerToOnPrimaryContainer2
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder16,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          SizedBox(height: 89.v),
                                          Text(
                                            "msg_learn_the_basic".tr,
                                            style: theme.textTheme.titleMedium,
                                          ),
                                          SizedBox(height: 2.v),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                height: 11.v,
                                                width: 2.h,
                                                margin: EdgeInsets.only(
                                                  top: 1.v,
                                                  bottom: 5.v,
                                                ),
                                                decoration: BoxDecoration(
                                                  color:
                                                      theme.colorScheme.primary,
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 5.h),
                                                child: Text(
                                                  "msg_06_workouts_for".tr,
                                                  style: CustomTextStyles
                                                      .bodyMediumPrimary_1,
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
                            Container(
                              height: 160.v,
                              width: 319.h,
                              margin: EdgeInsets.only(left: 16.h),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgImage7,
                                    height: 160.v,
                                    width: 319.h,
                                    radius: BorderRadius.circular(
                                      16.h,
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      width: 319.h,
                                      padding:
                                          EdgeInsets.symmetric(vertical: 16.v),
                                      decoration: AppDecoration
                                          .gradientOnPrimaryContainerToOnPrimaryContainer2
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder16,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top: 85.v),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "msg_learn_the_basic".tr,
                                                  style: theme
                                                      .textTheme.titleMedium,
                                                ),
                                                SizedBox(height: 4.v),
                                                Row(
                                                  children: [
                                                    Container(
                                                      height: 11.v,
                                                      width: 2.h,
                                                      margin:
                                                          EdgeInsets.symmetric(
                                                              vertical: 2.v),
                                                      decoration: BoxDecoration(
                                                        color: theme.colorScheme
                                                            .primary,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 5.h),
                                                      child: Text(
                                                        "msg_06_workouts_for"
                                                            .tr,
                                                        style: theme.textTheme
                                                            .bodyMedium,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: 33.h,
                                            margin: EdgeInsets.only(top: 112.v),
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 5.h,
                                              vertical: 1.v,
                                            ),
                                            decoration: AppDecoration.fillAmberA
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder4,
                                            ),
                                            child: Text(
                                              "lbl_pro".tr,
                                              style:
                                                  theme.textTheme.labelMedium,
                                            ),
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
                    ),
                    SizedBox(height: 69.v),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: IntrinsicWidth(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 205.v,
                              width: 180.h,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgImage205x180,
                                    height: 205.v,
                                    width: 180.h,
                                    radius: BorderRadius.circular(
                                      16.h,
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      width: 180.h,
                                      padding:
                                          EdgeInsets.symmetric(vertical: 16.v),
                                      decoration: AppDecoration
                                          .gradientOnPrimaryContainerToOnPrimaryContainer2
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder16,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.only(top: 130.v),
                                            child: Column(
                                              children: [
                                                Text(
                                                  "lbl_warm_up".tr,
                                                  style: theme
                                                      .textTheme.titleMedium,
                                                ),
                                                SizedBox(height: 4.v),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      height: 11.v,
                                                      width: 2.h,
                                                      margin:
                                                          EdgeInsets.symmetric(
                                                              vertical: 2.v),
                                                      decoration: BoxDecoration(
                                                        color: theme.colorScheme
                                                            .primary,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 5.h),
                                                      child: Text(
                                                        "lbl_01_workout".tr,
                                                        style: theme.textTheme
                                                            .bodyMedium,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: 33.h,
                                            margin: EdgeInsets.only(top: 157.v),
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 5.h,
                                              vertical: 1.v,
                                            ),
                                            decoration: AppDecoration.fillAmberA
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder4,
                                            ),
                                            child: Text(
                                              "lbl_pro".tr,
                                              style:
                                                  theme.textTheme.labelMedium,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 205.v,
                              width: 180.h,
                              margin: EdgeInsets.only(left: 16.h),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgImage8,
                                    height: 205.v,
                                    width: 180.h,
                                    radius: BorderRadius.circular(
                                      16.h,
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      width: 180.h,
                                      padding:
                                          EdgeInsets.symmetric(vertical: 16.v),
                                      decoration: AppDecoration
                                          .gradientOnPrimaryContainerToOnPrimaryContainer2
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder16,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.only(top: 130.v),
                                            child: Column(
                                              children: [
                                                Text(
                                                  "lbl_warm_up".tr,
                                                  style: theme
                                                      .textTheme.titleMedium,
                                                ),
                                                SizedBox(height: 4.v),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      height: 11.v,
                                                      width: 2.h,
                                                      margin:
                                                          EdgeInsets.symmetric(
                                                              vertical: 2.v),
                                                      decoration: BoxDecoration(
                                                        color: theme.colorScheme
                                                            .primary,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 5.h),
                                                      child: Text(
                                                        "lbl_01_workout".tr,
                                                        style: theme.textTheme
                                                            .bodyMedium,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: 33.h,
                                            margin: EdgeInsets.only(top: 157.v),
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 5.h,
                                              vertical: 1.v,
                                            ),
                                            decoration: AppDecoration.fillAmberA
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder4,
                                            ),
                                            child: Text(
                                              "lbl_pro".tr,
                                              style:
                                                  theme.textTheme.labelMedium,
                                            ),
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
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
