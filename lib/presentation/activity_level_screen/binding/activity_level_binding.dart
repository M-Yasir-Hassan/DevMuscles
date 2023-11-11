import '../controller/activity_level_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ActivityLevelScreen.
///
/// This class ensures that the ActivityLevelController is created when the
/// ActivityLevelScreen is first loaded.
class ActivityLevelBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ActivityLevelController());
  }
}
