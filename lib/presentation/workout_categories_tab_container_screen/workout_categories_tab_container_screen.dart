import 'controller/workout_categories_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:yasir_s_application3/core/app_export.dart';
import 'package:yasir_s_application3/presentation/home_tab_container_page/home_tab_container_page.dart';
import 'package:yasir_s_application3/presentation/insight_page/insight_page.dart';
import 'package:yasir_s_application3/presentation/notifications_one_tab_container_page/notifications_one_tab_container_page.dart';
import 'package:yasir_s_application3/presentation/workout_categories_page/workout_categories_page.dart';
import 'package:yasir_s_application3/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class WorkoutCategoriesTabContainerScreen
    extends GetWidget<WorkoutCategoriesTabContainerController> {
  const WorkoutCategoriesTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 60.v),
              Text(
                "msg_workout_categories".tr,
                style: CustomTextStyles.titleLargeOpenSansSemiBold,
              ),
              SizedBox(height: 28.v),
              _buildTabview(),
              Expanded(
                child: SizedBox(
                  height: 575.v,
                  child: TabBarView(
                    controller: controller.tabviewController,
                    children: [
                      WorkoutCategoriesPage(),
                      WorkoutCategoriesPage(),
                      WorkoutCategoriesPage(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
      height: 28.v,
      width: 327.h,
      decoration: BoxDecoration(
        color: theme.colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(
          14.h,
        ),
      ),
      child: TabBar(
        controller: controller.tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.onError.withOpacity(1),
        labelStyle: TextStyle(
          fontSize: 13.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelColor: appTheme.whiteA700,
        unselectedLabelStyle: TextStyle(
          fontSize: 13.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w400,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.primary,
          borderRadius: BorderRadius.circular(
            14.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_beginner".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_intermediate".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_advance".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeTabContainerPage;
      case BottomBarEnum.Insight:
        return AppRoutes.insightPage;
      case BottomBarEnum.Notificationprimarycontainer:
        return AppRoutes.notificationsOneTabContainerPage;
      case BottomBarEnum.tf:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeTabContainerPage:
        return HomeTabContainerPage();
      case AppRoutes.insightPage:
        return InsightPage();
      case AppRoutes.notificationsOneTabContainerPage:
        return NotificationsOneTabContainerPage();
      default:
        return DefaultWidget();
    }
  }
}
