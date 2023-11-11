import 'controller/notifications_one_controller.dart';
import 'models/notifications_one_model.dart';
import 'package:flutter/material.dart';
import 'package:yasir_s_application3/core/app_export.dart';

class NotificationsOnePage extends StatelessWidget {
  NotificationsOnePage({Key? key})
      : super(
          key: key,
        );

  NotificationsOneController controller =
      Get.put(NotificationsOneController(NotificationsOneModel().obs));

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
              SizedBox(height: 32.v),
              _buildNotificationSection(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNotificationSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.center,
          child: Divider(
            color: appTheme.gray800,
            indent: 24.h,
            endIndent: 24.h,
          ),
        ),
        SizedBox(height: 15.v),
        Padding(
          padding: EdgeInsets.only(
            left: 17.h,
            right: 31.h,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 8.adaptSize,
                    width: 8.adaptSize,
                    margin: EdgeInsets.only(
                      top: 4.v,
                      bottom: 8.v,
                    ),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.circular(
                        4.h,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text(
                      "lbl_congratulations".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 144.h,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "lbl_9_45_am".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 6.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "msg_35_your_daily_challenge".tr,
                  style: CustomTextStyles.bodyMedium15,
                ),
              ),
              SizedBox(height: 14.v),
              Divider(
                color: appTheme.gray800,
              ),
            ],
          ),
        ),
        SizedBox(height: 14.v),
        SizedBox(
          height: 164.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 17.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "lbl_attention".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 208.h),
                            child: Text(
                              "lbl_9_38_am".tr,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 6.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          width: 246.h,
                          child: Text(
                            "msg_your_subscription".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodyMedium15.copyWith(
                              height: 1.40,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 13.v),
                      Divider(
                        color: appTheme.gray800,
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 14.v),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "lbl_daily_activity".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 184.h,
                              bottom: 3.v,
                            ),
                            child: Text(
                              "lbl_8_25_am".tr,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 6.v),
                      Text(
                        "msg_time_for_your_workout".tr,
                        style: CustomTextStyles.bodyMedium15,
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: 79.v,
                  width: 64.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.h,
                    vertical: 27.v,
                  ),
                  decoration: AppDecoration.fillRedA,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgTrash,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    alignment: Alignment.center,
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(
          color: appTheme.gray800,
          endIndent: 64.h,
        ),
      ],
    );
  }
}
