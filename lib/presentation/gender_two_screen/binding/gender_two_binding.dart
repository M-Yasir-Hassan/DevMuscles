import '../controller/gender_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the GenderTwoScreen.
///
/// This class ensures that the GenderTwoController is created when the
/// GenderTwoScreen is first loaded.
class GenderTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GenderTwoController());
  }
}
