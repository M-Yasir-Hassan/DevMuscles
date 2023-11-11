import '../controller/workout_categories_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WorkoutCategoriesTabContainerScreen.
///
/// This class ensures that the WorkoutCategoriesTabContainerController is created when the
/// WorkoutCategoriesTabContainerScreen is first loaded.
class WorkoutCategoriesTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WorkoutCategoriesTabContainerController());
  }
}
