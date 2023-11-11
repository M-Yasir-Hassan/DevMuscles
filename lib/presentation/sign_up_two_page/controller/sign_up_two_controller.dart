import 'package:yasir_s_application3/core/app_export.dart';import 'package:yasir_s_application3/presentation/sign_up_two_page/models/sign_up_two_model.dart';import 'package:flutter/material.dart';/// A controller class for the SignUpTwoPage.
///
/// This class manages the state of the SignUpTwoPage, including the
/// current signUpTwoModelObj
class SignUpTwoController extends GetxController {SignUpTwoController(this.signUpTwoModelObj);

TextEditingController passwordController = TextEditingController();

Rx<SignUpTwoModel> signUpTwoModelObj;

Rx<bool> isShowPassword = true.obs;

@override void onClose() { super.onClose(); passwordController.dispose(); } 
 }
