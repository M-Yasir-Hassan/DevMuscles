import '../controller/insight_controller.dart';
import '../models/days_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yasir_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class DaysItemWidget extends StatelessWidget {
  DaysItemWidget(
    this.daysItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DaysItemModel daysItemModelObj;

  var controller = Get.find<InsightController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40.h,
      child: Align(
        alignment: Alignment.bottomRight,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 9.h,
            vertical: 8.v,
          ),
          decoration: AppDecoration.fillGray.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder20,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              Padding(
                padding: EdgeInsets.only(left: 5.h),
                child: Obx(
                  () => Text(
                    daysItemModelObj.day!.value,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ),
              SizedBox(height: 3.v),
              Obx(
                () => Text(
                  daysItemModelObj.number!.value,
                  style: theme.textTheme.titleMedium,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
