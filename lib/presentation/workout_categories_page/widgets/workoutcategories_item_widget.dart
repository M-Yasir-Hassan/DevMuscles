import '../controller/workout_categories_controller.dart';
import '../models/workoutcategories_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yasir_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class WorkoutcategoriesItemWidget extends StatelessWidget {
  WorkoutcategoriesItemWidget(
    this.workoutcategoriesItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  WorkoutcategoriesItemModel workoutcategoriesItemModelObj;

  var controller = Get.find<WorkoutCategoriesController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160.v,
      width: 327.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: workoutcategoriesItemModelObj.wakeUpCall!.value,
              height: 160.v,
              width: 327.h,
              radius: BorderRadius.circular(
                16.h,
              ),
              alignment: Alignment.center,
            ),
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
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 89.v),
                  Obx(
                    () => Text(
                      workoutcategoriesItemModelObj.title!.value,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  SizedBox(height: 2.v),
                  Row(
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
                          color: theme.colorScheme.primary,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.h),
                        child: Obx(
                          () => Text(
                            workoutcategoriesItemModelObj.subtitle!.value,
                            style: CustomTextStyles.bodyMediumPrimary_1,
                          ),
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
    );
  }
}
