import '../workout_categories_page/widgets/workoutcategories_item_widget.dart';
import 'controller/workout_categories_controller.dart';
import 'models/workout_categories_model.dart';
import 'models/workoutcategories_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yasir_s_application3/core/app_export.dart';

class WorkoutCategoriesPage extends StatelessWidget {
  WorkoutCategoriesPage({Key? key})
      : super(
          key: key,
        );

  WorkoutCategoriesController controller =
      Get.put(WorkoutCategoriesController(WorkoutCategoriesModel().obs));

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
              _buildWorkoutCategories(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWorkoutCategories() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
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
            itemCount: controller.workoutCategoriesModelObj.value
                .workoutcategoriesItemList.value.length,
            itemBuilder: (context, index) {
              WorkoutcategoriesItemModel model = controller
                  .workoutCategoriesModelObj
                  .value
                  .workoutcategoriesItemList
                  .value[index];
              return WorkoutcategoriesItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}
