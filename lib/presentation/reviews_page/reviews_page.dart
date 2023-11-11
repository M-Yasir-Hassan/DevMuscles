import '../reviews_page/widgets/reviews_item_widget.dart';
import 'controller/reviews_controller.dart';
import 'models/reviews_item_model.dart';
import 'models/reviews_model.dart';
import 'package:flutter/material.dart';
import 'package:yasir_s_application3/core/app_export.dart';
import 'package:yasir_s_application3/widgets/custom_elevated_button.dart';

class ReviewsPage extends StatelessWidget {
  ReviewsPage({Key? key})
      : super(
          key: key,
        );

  ReviewsController controller = Get.put(ReviewsController(ReviewsModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 27.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Column(
                    children: [
                      _buildRatingGraphic(),
                      SizedBox(height: 30.v),
                      SizedBox(
                        height: 672.v,
                        width: 374.h,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            _buildReviews(),
                            _buildWriteAReview(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRatingGraphic() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 31.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 14.v),
            child: Text(
              "lbl_4_6".tr,
              style: CustomTextStyles.displayMediumSemiBold,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 9.v),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 27.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "lbl_5".tr,
                          style: CustomTextStyles.openSansWhiteA700,
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 17.v,
                          width: 5.h,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  "lbl_4".tr,
                                  style: CustomTextStyles.openSansWhiteA700,
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "lbl_3".tr,
                                  style: CustomTextStyles.openSansWhiteA700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "lbl_2".tr,
                          style: CustomTextStyles.openSansWhiteA700,
                        ),
                      ),
                      Text(
                        "lbl_1".tr,
                        style: CustomTextStyles.openSansWhiteA700,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 6.h,
                    top: 3.v,
                  ),
                  child: Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgLines,
                        height: 39.v,
                        width: 193.h,
                      ),
                      SizedBox(height: 10.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "lbl_174_ratings".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildReviews() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 23.h),
        child: Obx(
          () => ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 16.v,
              );
            },
            itemCount:
                controller.reviewsModelObj.value.reviewsItemList.value.length,
            itemBuilder: (context, index) {
              ReviewsItemModel model =
                  controller.reviewsModelObj.value.reviewsItemList.value[index];
              return ReviewsItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWriteAReview() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(bottom: 138.v),
        padding: EdgeInsets.symmetric(
          horizontal: 55.h,
          vertical: 32.v,
        ),
        decoration:
            AppDecoration.gradientOnPrimaryContainerToOnPrimaryContainer1,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 75.v),
            CustomElevatedButton(
              text: "lbl_write_a_review".tr,
            ),
          ],
        ),
      ),
    );
  }
}
