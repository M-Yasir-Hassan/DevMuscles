import 'package:yasir_s_application3/core/app_export.dart';import 'package:yasir_s_application3/presentation/language_screen/models/language_model.dart';import 'package:flutter/material.dart';/// A controller class for the LanguageScreen.
///
/// This class manages the state of the LanguageScreen, including the
/// current languageModelObj
class LanguageController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<LanguageModel> languageModelObj = LanguageModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
