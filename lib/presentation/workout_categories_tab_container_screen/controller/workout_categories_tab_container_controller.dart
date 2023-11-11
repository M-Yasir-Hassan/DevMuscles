import 'package:yasir_s_application3/core/app_export.dart';
import 'package:yasir_s_application3/presentation/workout_categories_tab_container_screen/models/workout_categories_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the WorkoutCategoriesTabContainerScreen.
///
/// This class manages the state of the WorkoutCategoriesTabContainerScreen, including the
/// current workoutCategoriesTabContainerModelObj
class WorkoutCategoriesTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<WorkoutCategoriesTabContainerModel> workoutCategoriesTabContainerModelObj =
      WorkoutCategoriesTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));
}
