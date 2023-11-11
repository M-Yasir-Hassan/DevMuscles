import 'package:yasir_s_application3/core/app_export.dart';
import 'package:yasir_s_application3/presentation/goal_screen/models/goal_model.dart';

/// A controller class for the GoalScreen.
///
/// This class manages the state of the GoalScreen, including the
/// current goalModelObj
class GoalController extends GetxController {
  Rx<GoalModel> goalModelObj = GoalModel().obs;
}
