import 'package:yasir_s_application3/core/app_export.dart';
import 'package:yasir_s_application3/presentation/login_two_page/models/login_two_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the LoginTwoPage.
///
/// This class manages the state of the LoginTwoPage, including the
/// current loginTwoModelObj
class LoginTwoController extends GetxController {
  LoginTwoController(this.loginTwoModelObj);

  TextEditingController showController = TextEditingController();

  Rx<LoginTwoModel> loginTwoModelObj;

  Rx<bool> sarahmailcom = false.obs;

  @override
  void onClose() {
    super.onClose();
    showController.dispose();
  }
}
