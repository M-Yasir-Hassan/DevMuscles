import 'package:yasir_s_application3/core/app_export.dart';
import 'package:yasir_s_application3/presentation/sign_up_page/models/sign_up_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignUpPage.
///
/// This class manages the state of the SignUpPage, including the
/// current signUpModelObj
class SignUpController extends GetxController {
  SignUpController(this.signUpModelObj);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<SignUpModel> signUpModelObj;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }
}
