import '../controller/reviews_controller.dart';
import '../models/reviews_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yasir_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class ReviewsItemWidget extends StatelessWidget {
  ReviewsItemWidget(
    this.reviewsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ReviewsItemModel reviewsItemModelObj;

  var controller = Get.find<ReviewsController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 12.v,
        ),
        decoration: AppDecoration.fillOnPrimary.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 3.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath: reviewsItemModelObj.sharonJem!.value,
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    radius: BorderRadius.circular(
                      16.h,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    top: 7.v,
                    bottom: 3.v,
                  ),
                  child: Obx(
                    () => Text(
                      reviewsItemModelObj.name!.value,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                ),
                Container(
                  height: 13.v,
                  width: 27.h,
                  margin: EdgeInsets.only(
                    left: 10.h,
                    top: 9.v,
                    bottom: 9.v,
                  ),
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgPoint,
                        height: 13.v,
                        width: 27.h,
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: Obx(
                            () => Text(
                              reviewsItemModelObj.title!.value,
                              style: theme.textTheme.labelSmall,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 10.v,
                    bottom: 6.v,
                  ),
                  child: Obx(
                    () => Text(
                      reviewsItemModelObj.date!.value,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.v),
            SizedBox(
              width: 295.h,
              child: Obx(
                () => Text(
                  reviewsItemModelObj.description!.value,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    height: 1.23,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
