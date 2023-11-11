import 'package:yasir_s_application3/core/app_export.dart';
import 'package:yasir_s_application3/presentation/gender_two_screen/models/gender_two_model.dart';

/// A controller class for the GenderTwoScreen.
///
/// This class manages the state of the GenderTwoScreen, including the
/// current genderTwoModelObj
class GenderTwoController extends GetxController {
  Rx<GenderTwoModel> genderTwoModelObj = GenderTwoModel().obs;
}
