import 'package:yasir_s_application3/core/app_export.dart';
import 'package:yasir_s_application3/presentation/weight_screen/models/weight_model.dart';

/// A controller class for the WeightScreen.
///
/// This class manages the state of the WeightScreen, including the
/// current weightModelObj
class WeightController extends GetxController {
  Rx<WeightModel> weightModelObj = WeightModel().obs;
}
