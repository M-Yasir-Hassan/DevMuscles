import 'package:yasir_s_application3/core/app_export.dart';import 'package:yasir_s_application3/presentation/workout_plan_detail_screen/models/workout_plan_detail_model.dart';import 'package:flutter/material.dart';/// A controller class for the WorkoutPlanDetailScreen.
///
/// This class manages the state of the WorkoutPlanDetailScreen, including the
/// current workoutPlanDetailModelObj
class WorkoutPlanDetailController extends GetxController {TextEditingController timeController = TextEditingController();

TextEditingController calCounterController = TextEditingController();

Rx<WorkoutPlanDetailModel> workoutPlanDetailModelObj = WorkoutPlanDetailModel().obs;

SelectionPopupModel? selectedDropDownValue;

@override void onClose() { super.onClose(); timeController.dispose(); calCounterController.dispose(); } 
onSelected(dynamic value) { for (var element in workoutPlanDetailModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} workoutPlanDetailModelObj.value.dropdownItemList.refresh(); } 
 }
