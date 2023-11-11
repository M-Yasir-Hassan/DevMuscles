import 'package:yasir_s_application3/core/app_export.dart';import 'package:yasir_s_application3/presentation/units_of_measure_screen/models/units_of_measure_model.dart';/// A controller class for the UnitsOfMeasureScreen.
///
/// This class manages the state of the UnitsOfMeasureScreen, including the
/// current unitsOfMeasureModelObj
class UnitsOfMeasureController extends GetxController {Rx<UnitsOfMeasureModel> unitsOfMeasureModelObj = UnitsOfMeasureModel().obs;

Rx<String> radioGroup = "".obs;

Rx<String> radioGroup1 = "".obs;

 }
