import '../controller/goal_controller.dart';
import 'package:get/get.dart';

/// A binding class for the GoalScreen.
///
/// This class ensures that the GoalController is created when the
/// GoalScreen is first loaded.
class GoalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GoalController());
  }
}
