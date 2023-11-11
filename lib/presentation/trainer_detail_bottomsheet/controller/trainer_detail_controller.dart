import 'package:yasir_s_application3/core/app_export.dart';
import 'package:yasir_s_application3/presentation/trainer_detail_bottomsheet/models/trainer_detail_model.dart';

/// A controller class for the TrainerDetailBottomsheet.
///
/// This class manages the state of the TrainerDetailBottomsheet, including the
/// current trainerDetailModelObj
class TrainerDetailController extends GetxController {
  Rx<TrainerDetailModel> trainerDetailModelObj = TrainerDetailModel().obs;
}
