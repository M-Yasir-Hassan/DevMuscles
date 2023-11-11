import 'package:yasir_s_application3/core/app_export.dart';
import 'package:yasir_s_application3/presentation/age_screen/models/age_model.dart';

/// A controller class for the AgeScreen.
///
/// This class manages the state of the AgeScreen, including the
/// current ageModelObj
class AgeController extends GetxController {
  Rx<AgeModel> ageModelObj = AgeModel().obs;
}
