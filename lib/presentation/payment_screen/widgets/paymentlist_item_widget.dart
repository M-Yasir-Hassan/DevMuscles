import '../controller/payment_controller.dart';
import '../models/paymentlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yasir_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class PaymentlistItemWidget extends StatelessWidget {
  PaymentlistItemWidget(
    this.paymentlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PaymentlistItemModel paymentlistItemModelObj;

  var controller = Get.find<PaymentController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 62.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          height: 115.v,
          width: 62.h,
          padding: EdgeInsets.symmetric(
            horizontal: 23.h,
            vertical: 49.v,
          ),
          decoration: AppDecoration.fillOnPrimary.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Obx(
            () => CustomImageView(
              imagePath: paymentlistItemModelObj.image!.value,
              height: 16.adaptSize,
              width: 16.adaptSize,
              alignment: Alignment.bottomCenter,
            ),
          ),
        ),
      ),
    );
  }
}
