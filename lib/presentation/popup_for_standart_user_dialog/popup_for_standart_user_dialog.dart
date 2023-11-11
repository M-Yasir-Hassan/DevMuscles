import 'controller/popup_for_standart_user_controller.dart';
import 'package:flutter/material.dart';
import 'package:yasir_s_application3/core/app_export.dart';
import 'package:yasir_s_application3/widgets/custom_elevated_button.dart';

class PopupForStandartUserDialog extends StatelessWidget {
  PopupForStandartUserDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  PopupForStandartUserController controller;

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
            height: 239.v,
            width: 311.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage239x311,
                  height: 239.v,
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
                      horizontal: 24.h,
                      vertical: 21.v,
                    ),
                    decoration: AppDecoration
                        .gradientOnPrimaryContainerToOnPrimaryContainer2
                        .copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL16,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 154.v),
                        Text(
                          "msg_upgrade_to_premium".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                        Text(
                          "msg_subscribe_to_take".tr,
                          style: CustomTextStyles.bodyMediumPrimary_1,
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
            text: "lbl_be_premium".tr,
            margin: EdgeInsets.symmetric(horizontal: 32.h),
          ),
          SizedBox(height: 24.v),
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
