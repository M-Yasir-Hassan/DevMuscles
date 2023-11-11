import 'package:yasir_s_application3/core/app_export.dart';import 'package:yasir_s_application3/presentation/write_a_review_screen/models/write_a_review_model.dart';import 'package:flutter/material.dart';/// A controller class for the WriteAReviewScreen.
///
/// This class manages the state of the WriteAReviewScreen, including the
/// current writeAReviewModelObj
class WriteAReviewController extends GetxController {TextEditingController ratingController = TextEditingController();

TextEditingController reviewOptionalController = TextEditingController();

Rx<WriteAReviewModel> writeAReviewModelObj = WriteAReviewModel().obs;

@override void onClose() { super.onClose(); ratingController.dispose(); reviewOptionalController.dispose(); } 
 }
