import 'controller/home_container_controller.dart';import 'package:flutter/material.dart';import 'package:yasir_s_application3/core/app_export.dart';import 'package:yasir_s_application3/presentation/home_tab_container_page/home_tab_container_page.dart';import 'package:yasir_s_application3/presentation/insight_page/insight_page.dart';import 'package:yasir_s_application3/presentation/notifications_one_tab_container_page/notifications_one_tab_container_page.dart';import 'package:yasir_s_application3/widgets/custom_bottom_bar.dart';class HomeContainerScreen extends GetWidget<HomeContainerController> {const HomeContainerScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: Navigator(key: Get.nestedKey(1), initialRoute: AppRoutes.homeTabContainerPage, onGenerateRoute: (routeSetting) => GetPageRoute(page: () => getCurrentPage(routeSetting.name!), transition: Transition.noTransition)), bottomNavigationBar: _buildBottomBar())); } 
/// Section Widget
Widget _buildBottomBar() { return CustomBottomBar(onChanged: (BottomBarEnum type) {Get.toNamed(getCurrentRoute(type), id: 1);}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.homeTabContainerPage; case BottomBarEnum.Insight: return AppRoutes.insightPage; case BottomBarEnum.Notificationprimarycontainer: return AppRoutes.notificationsOneTabContainerPage; case BottomBarEnum.tf: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.homeTabContainerPage: return HomeTabContainerPage(); case AppRoutes.insightPage: return InsightPage(); case AppRoutes.notificationsOneTabContainerPage: return NotificationsOneTabContainerPage(); default: return DefaultWidget();} } 
 }
