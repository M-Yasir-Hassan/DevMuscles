import 'controller/add_new_card_controller.dart';import 'package:flutter/material.dart';import 'package:yasir_s_application3/core/app_export.dart';import 'package:yasir_s_application3/core/utils/validation_functions.dart';import 'package:yasir_s_application3/widgets/app_bar/appbar_leading_image.dart';import 'package:yasir_s_application3/widgets/app_bar/appbar_title.dart';import 'package:yasir_s_application3/widgets/app_bar/custom_app_bar.dart';import 'package:yasir_s_application3/widgets/custom_checkbox_button.dart';import 'package:yasir_s_application3/widgets/custom_elevated_button.dart';import 'package:yasir_s_application3/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class AddNewCardScreen extends GetWidget<AddNewCardController> {AddNewCardScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 20.v), child: Column(children: [_buildCard(), SizedBox(height: 42.v), CustomTextFormField(controller: controller.nameController, hintText: "msg_card_holder_name".tr, validator: (value) {if (!isText(value)) {return "err_msg_please_enter_valid_text".tr;} return null;}, contentPadding: EdgeInsets.symmetric(horizontal: 16.h)), SizedBox(height: 37.v), CustomTextFormField(controller: controller.cardNumberController, hintText: "lbl_card_number".tr, textInputAction: TextInputAction.done, textInputType: TextInputType.number, validator: (value) {if (!isNumeric(value)) {return "err_msg_please_enter_valid_number".tr;} return null;}, contentPadding: EdgeInsets.symmetric(horizontal: 16.h)), SizedBox(height: 37.v), _buildPlaceholder(), SizedBox(height: 23.v), _buildCheckBox(), SizedBox(height: 5.v)]))), bottomNavigationBar: _buildButton())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 56.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftOnprimary, margin: EdgeInsets.only(left: 24.h, top: 12.v, bottom: 12.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarTitle(text: "lbl_add_new_card".tr)); } 
/// Section Widget
Widget _buildCard() { return SizedBox(height: 176.v, width: 327.h, child: Stack(alignment: Alignment.bottomCenter, children: [CustomImageView(imagePath: ImageConstant.imgImage176x327, height: 176.v, width: 327.h, radius: BorderRadius.circular(16.h), alignment: Alignment.center), Align(alignment: Alignment.bottomCenter, child: Padding(padding: EdgeInsets.only(left: 16.h, right: 24.h, bottom: 14.v), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgVisa, height: 24.v, width: 77.h, alignment: Alignment.centerRight), SizedBox(height: 59.v), Text("lbl_holder_name".tr, style: CustomTextStyles.bodyMedium15), SizedBox(height: 4.v), Text("msg_0000_0000_0000_0000".tr, style: CustomTextStyles.titleLargeOpenSansSemiBold)])))])); } 
/// Section Widget
Widget _buildPlaceholder() { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: _buildInput()), _buildInput()]); } 
/// Section Widget
Widget _buildCheckBox() { return Align(alignment: Alignment.centerLeft, child: Obx(() => CustomCheckboxButton(alignment: Alignment.centerLeft, text: "msg_set_as_default_payment".tr, value: controller.checkBox.value, padding: EdgeInsets.symmetric(vertical: 2.v), textStyle: theme.textTheme.bodySmall, onChange: (value) {controller.checkBox.value = value;}))); } 
/// Section Widget
Widget _buildButton() { return CustomElevatedButton(text: "lbl_done".tr, margin: EdgeInsets.only(left: 56.h, right: 56.h, bottom: 32.v)); } 
/// Common widget
Widget _buildInput() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 16.h), child: Text("lbl_cvc".tr, style: theme.textTheme.bodyLarge)), SizedBox(height: 17.v), SizedBox(width: 153.h, child: Divider())]); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
