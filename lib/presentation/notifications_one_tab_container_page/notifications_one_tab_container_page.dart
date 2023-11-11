import 'controller/notifications_one_tab_container_controller.dart';
import 'models/notifications_one_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:yasir_s_application3/core/app_export.dart';
import 'package:yasir_s_application3/presentation/notifications_one_page/notifications_one_page.dart';

class NotificationsOneTabContainerPage extends StatelessWidget {
  NotificationsOneTabContainerPage({Key? key})
      : super(
          key: key,
        );

  NotificationsOneTabContainerController controller = Get.put(
      NotificationsOneTabContainerController(
          NotificationsOneTabContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnErrorContainer,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 59.v),
              Text(
                "lbl_notifications".tr,
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 34.v),
              _buildTabview(),
              SizedBox(
                height: 575.v,
                child: TabBarView(
                  controller: controller.tabviewController,
                  children: [
                    NotificationsOnePage(),
                    NotificationsOnePage(),
                    NotificationsOnePage(),
                  ],
                ),
              ),
            ],
          ),
        ),
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
              "lbl_new".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_events".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_all".tr,
            ),
          ),
        ],
      ),
    );
  }
}
