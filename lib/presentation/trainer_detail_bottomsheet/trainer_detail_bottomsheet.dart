import 'controller/trainer_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:yasir_s_application3/core/app_export.dart';
import 'package:yasir_s_application3/widgets/custom_elevated_button.dart';
import 'package:yasir_s_application3/widgets/custom_icon_button.dart';

class TrainerDetailBottomsheet extends StatelessWidget {
  TrainerDetailBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  TrainerDetailController controller;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 22.h,
          vertical: 32.v,
        ),
        decoration: AppDecoration.fillOnErrorContainer.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL32,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildTitleSection(),
            SizedBox(height: 32.v),
            _buildStatisticsSection(),
            SizedBox(height: 309.v),
            CustomElevatedButton(
              text: "msg_book_an_appointment".tr,
              margin: EdgeInsets.symmetric(horizontal: 33.h),
            ),
            SizedBox(height: 16.v),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTitleSection() {
    return Padding(
      padding: EdgeInsets.only(right: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 4.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_jennifer_james".tr,
                  style: CustomTextStyles.titleLargeOpenSansSemiBold,
                ),
                SizedBox(height: 3.v),
                Text(
                  "msg_functional_strength".tr,
                  style: CustomTextStyles.bodyMediumPrimary_1,
                ),
              ],
            ),
          ),
          CustomIconButton(
            height: 54.adaptSize,
            width: 54.adaptSize,
            padding: EdgeInsets.all(15.h),
            decoration: IconButtonStyleHelper.fillPrimary,
            child: CustomImageView(
              imagePath: ImageConstant.imgCall,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStatisticsSection() {
    return Container(
      margin: EdgeInsets.only(right: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 22.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 3.v,
              bottom: 2.v,
            ),
            child: _buildTitle(
              titleText: "lbl_6".tr,
              subtitleText: "lbl_experience".tr,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: SizedBox(
              height: 54.v,
              child: VerticalDivider(
                width: 1.h,
                thickness: 1.v,
                color: appTheme.gray800,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 25.h,
              top: 3.v,
              bottom: 2.v,
            ),
            child: _buildTitle(
              titleText: "lbl_462".tr,
              subtitleText: "lbl_completed".tr,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 26.h),
            child: SizedBox(
              height: 54.v,
              child: VerticalDivider(
                width: 1.h,
                thickness: 1.v,
                color: appTheme.gray800,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 17.h,
              top: 3.v,
              bottom: 3.v,
            ),
            child: Column(
              children: [
                Text(
                  "lbl_25".tr,
                  style: CustomTextStyles.titleLargeOpenSans,
                ),
                SizedBox(height: 2.v),
                Text(
                  "lbl_active_clients".tr,
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildTitle({
    required String titleText,
    required String subtitleText,
  }) {
    return Column(
      children: [
        Text(
          titleText,
          style: CustomTextStyles.titleLargeOpenSans.copyWith(
            color: appTheme.whiteA700,
          ),
        ),
        SizedBox(height: 3.v),
        Text(
          subtitleText,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.whiteA700,
          ),
        ),
      ],
    );
  }
}
