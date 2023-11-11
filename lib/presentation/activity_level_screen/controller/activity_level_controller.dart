import 'package:yasir_s_application3/core/app_export.dart';
import 'package:yasir_s_application3/presentation/activity_level_screen/models/activity_level_model.dart';

/// A controller class for the ActivityLevelScreen.
///
/// This class manages the state of the ActivityLevelScreen, including the
/// current activityLevelModelObj
class ActivityLevelController extends GetxController {
  Rx<ActivityLevelModel> activityLevelModelObj = ActivityLevelModel().obs;
}
