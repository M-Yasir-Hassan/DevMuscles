import 'package:yasir_s_application3/core/app_export.dart';
import 'package:yasir_s_application3/presentation/popup_for_standart_user_dialog/models/popup_for_standart_user_model.dart';

/// A controller class for the PopupForStandartUserDialog.
///
/// This class manages the state of the PopupForStandartUserDialog, including the
/// current popupForStandartUserModelObj
class PopupForStandartUserController extends GetxController {
  Rx<PopupForStandartUserModel> popupForStandartUserModelObj =
      PopupForStandartUserModel().obs;
}
