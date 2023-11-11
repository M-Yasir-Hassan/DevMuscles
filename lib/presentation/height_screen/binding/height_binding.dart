import '../controller/height_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HeightScreen.
///
/// This class ensures that the HeightController is created when the
/// HeightScreen is first loaded.
class HeightBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HeightController());
  }
}
