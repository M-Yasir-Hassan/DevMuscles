import 'package:yasir_s_application3/core/app_export.dart';
import 'package:yasir_s_application3/presentation/sign_up_two_tab_container_screen/models/sign_up_two_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignUpTwoTabContainerScreen.
///
/// This class manages the state of the SignUpTwoTabContainerScreen, including the
/// current signUpTwoTabContainerModelObj
class SignUpTwoTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<SignUpTwoTabContainerModel> signUpTwoTabContainerModelObj =
      SignUpTwoTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));
}
