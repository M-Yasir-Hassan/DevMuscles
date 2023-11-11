import '../controller/age_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AgeScreen.
///
/// This class ensures that the AgeController is created when the
/// AgeScreen is first loaded.
class AgeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AgeController());
  }
}
