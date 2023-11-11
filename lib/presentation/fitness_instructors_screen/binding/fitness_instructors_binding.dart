import '../controller/fitness_instructors_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FitnessInstructorsScreen.
///
/// This class ensures that the FitnessInstructorsController is created when the
/// FitnessInstructorsScreen is first loaded.
class FitnessInstructorsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FitnessInstructorsController());
  }
}
