import '../controller/workout_plan_detail_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WorkoutPlanDetailScreen.
///
/// This class ensures that the WorkoutPlanDetailController is created when the
/// WorkoutPlanDetailScreen is first loaded.
class WorkoutPlanDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WorkoutPlanDetailController());
  }
}
