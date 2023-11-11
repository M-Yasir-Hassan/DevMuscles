import 'package:yasir_s_application3/core/app_export.dart';
import 'package:yasir_s_application3/presentation/notifications_one_page/models/notifications_one_model.dart';

/// A controller class for the NotificationsOnePage.
///
/// This class manages the state of the NotificationsOnePage, including the
/// current notificationsOneModelObj
class NotificationsOneController extends GetxController {
  NotificationsOneController(this.notificationsOneModelObj);

  Rx<NotificationsOneModel> notificationsOneModelObj;
}
