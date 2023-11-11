import '../controller/weight_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WeightScreen.
///
/// This class ensures that the WeightController is created when the
/// WeightScreen is first loaded.
class WeightBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WeightController());
  }
}
