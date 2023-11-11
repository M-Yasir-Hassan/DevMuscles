import 'package:yasir_s_application3/core/app_export.dart';
import 'package:yasir_s_application3/presentation/notifications_one_tab_container_page/models/notifications_one_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the NotificationsOneTabContainerPage.
///
/// This class manages the state of the NotificationsOneTabContainerPage, including the
/// current notificationsOneTabContainerModelObj
class NotificationsOneTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  NotificationsOneTabContainerController(
      this.notificationsOneTabContainerModelObj);

  Rx<NotificationsOneTabContainerModel> notificationsOneTabContainerModelObj;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));
}
