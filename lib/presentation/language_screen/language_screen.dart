import '../language_screen/widgets/languagelist_item_widget.dart';import 'controller/language_controller.dart';import 'models/languagelist_item_model.dart';import 'package:flutter/material.dart';import 'package:yasir_s_application3/core/app_export.dart';import 'package:yasir_s_application3/widgets/app_bar/appbar_leading_image.dart';import 'package:yasir_s_application3/widgets/app_bar/appbar_title.dart';import 'package:yasir_s_application3/widgets/app_bar/custom_app_bar.dart';import 'package:yasir_s_application3/widgets/custom_search_view.dart';class LanguageScreen extends GetWidget<LanguageController> {const LanguageScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 30.h), child: Column(children: [SizedBox(height: 20.v), CustomSearchView(controller: controller.searchController, hintText: "lbl_search".tr), SizedBox(height: 50.v), _buildLanguageList()])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 56.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftOnprimary, margin: EdgeInsets.only(left: 24.h, top: 12.v, bottom: 12.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarTitle(text: "lbl_language".tr)); } 
/// Section Widget
Widget _buildLanguageList() { return Expanded(child: Obx(() => ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return Padding(padding: EdgeInsets.symmetric(vertical: 9.0.v), child: SizedBox(width: 311.h, child: Divider(height: 1.v, thickness: 1.v, color: theme.colorScheme.onPrimary)));}, itemCount: controller.languageModelObj.value.languagelistItemList.value.length, itemBuilder: (context, index) {LanguagelistItemModel model = controller.languageModelObj.value.languagelistItemList.value[index]; return LanguagelistItemWidget(model);}))); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
