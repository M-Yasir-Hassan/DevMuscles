import 'package:yasir_s_application3/core/app_export.dart';import 'package:yasir_s_application3/presentation/language_two_screen/models/language_two_model.dart';import 'package:flutter/material.dart';/// A controller class for the LanguageTwoScreen.
///
/// This class manages the state of the LanguageTwoScreen, including the
/// current languageTwoModelObj
class LanguageTwoController extends GetxController {TextEditingController enController = TextEditingController();

Rx<LanguageTwoModel> languageTwoModelObj = LanguageTwoModel().obs;

Rx<bool> english = false.obs;

@override void onClose() { super.onClose(); enController.dispose(); } 
 }
