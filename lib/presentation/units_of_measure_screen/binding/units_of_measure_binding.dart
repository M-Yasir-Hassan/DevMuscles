import '../controller/units_of_measure_controller.dart';
import 'package:get/get.dart';

/// A binding class for the UnitsOfMeasureScreen.
///
/// This class ensures that the UnitsOfMeasureController is created when the
/// UnitsOfMeasureScreen is first loaded.
class UnitsOfMeasureBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UnitsOfMeasureController());
  }
}
