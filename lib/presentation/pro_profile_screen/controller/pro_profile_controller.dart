import 'package:yasir_s_application3/core/app_export.dart';import 'package:yasir_s_application3/presentation/pro_profile_screen/models/pro_profile_model.dart';import 'package:flutter/material.dart';/// A controller class for the ProProfileScreen.
///
/// This class manages the state of the ProProfileScreen, including the
/// current proProfileModelObj
class ProProfileController extends GetxController {TextEditingController signOutController = TextEditingController();

Rx<ProProfileModel> proProfileModelObj = ProProfileModel().obs;

@override void onClose() { super.onClose(); signOutController.dispose(); } 
 }
