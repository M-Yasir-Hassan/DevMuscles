import 'package:yasir_s_application3/core/app_export.dart';import 'package:yasir_s_application3/presentation/profile_screen/models/profile_model.dart';import 'package:flutter/material.dart';/// A controller class for the ProfileScreen.
///
/// This class manages the state of the ProfileScreen, including the
/// current profileModelObj
class ProfileController extends GetxController {TextEditingController signOutController = TextEditingController();

Rx<ProfileModel> profileModelObj = ProfileModel().obs;

@override void onClose() { super.onClose(); signOutController.dispose(); } 
 }
