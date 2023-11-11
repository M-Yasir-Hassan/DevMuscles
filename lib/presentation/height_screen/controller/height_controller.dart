import 'package:yasir_s_application3/core/app_export.dart';
import 'package:yasir_s_application3/presentation/height_screen/models/height_model.dart';

/// A controller class for the HeightScreen.
///
/// This class manages the state of the HeightScreen, including the
/// current heightModelObj
class HeightController extends GetxController {
  Rx<HeightModel> heightModelObj = HeightModel().obs;
}
