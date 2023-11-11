import 'controller/popup_for_pro_user_controller.dart';
import 'package:flutter/material.dart';
import 'package:yasir_s_application3/core/app_export.dart';
import 'package:yasir_s_application3/widgets/custom_elevated_button.dart';

class PopupForProUserDialog extends StatelessWidget {
  PopupForProUserDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  PopupForProUserController controller;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: 311.h,
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 176.v,
            width: 311.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage176x311,
                  height: 176.v,
                  width: 311.h,
                  radius: BorderRadius.vertical(
                    top: Radius.circular(16.h),
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
                      borderRadius: BorderRadiusStyle.customBorderTL16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 105.v),
                          child: Column(
                            children: [
                              Text(
                                "msg_lower_body_strength".tr,
                                style: theme.textTheme.titleMedium,
                              ),
                              SizedBox(height: 2.v),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 11.v,
                                    width: 2.h,
                                    margin: EdgeInsets.only(
                                      top: 1.v,
                                      bottom: 5.v,
                                    ),
                                    decoration: BoxDecoration(
                                      color: appTheme.redA40001,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 5.h),
                                    child: Text(
                                      "msg_05_workouts_for".tr,
                                      style:
                                          CustomTextStyles.bodyMediumPrimary_1,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 33.h,
                          margin: EdgeInsets.only(
                            top: 130.v,
                            bottom: 2.v,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 5.h,
                            vertical: 1.v,
                          ),
                          decoration: AppDecoration.fillRedA.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: Text(
                            "lbl_pro".tr,
                            style: theme.textTheme.labelMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 32.v),
          CustomElevatedButton(
            text: "msg_take_appointment".tr,
            margin: EdgeInsets.symmetric(horizontal: 32.h),
            rightIcon: Container(
              margin: EdgeInsets.only(left: 8.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgChevronright,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
          ),
          SizedBox(height: 23.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 130.h),
              child: Text(
                "lbl_cancel".tr,
                style: theme.textTheme.bodyMedium,
              ),
            ),
          ),
          SizedBox(height: 22.v),
        ],
      ),
    );
  }
}
