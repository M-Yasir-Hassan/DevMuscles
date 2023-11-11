import 'package:yasir_s_application3/core/app_export.dart';
import 'package:yasir_s_application3/presentation/gender_screen/models/gender_model.dart';

/// A controller class for the GenderScreen.
///
/// This class manages the state of the GenderScreen, including the
/// current genderModelObj
class GenderController extends GetxController {
  Rx<GenderModel> genderModelObj = GenderModel().obs;
}
