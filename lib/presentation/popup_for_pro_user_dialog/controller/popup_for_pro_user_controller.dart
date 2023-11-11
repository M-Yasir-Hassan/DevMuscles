import 'package:yasir_s_application3/core/app_export.dart';
import 'package:yasir_s_application3/presentation/popup_for_pro_user_dialog/models/popup_for_pro_user_model.dart';

/// A controller class for the PopupForProUserDialog.
///
/// This class manages the state of the PopupForProUserDialog, including the
/// current popupForProUserModelObj
class PopupForProUserController extends GetxController {
  Rx<PopupForProUserModel> popupForProUserModelObj = PopupForProUserModel().obs;
}
