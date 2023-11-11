import '../models/time_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yasir_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class TimeItemWidget extends StatelessWidget {
  TimeItemWidget(
    this.timeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TimeItemModel timeItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Theme(
        data: ThemeData(
          canvasColor: Colors.transparent,
        ),
        child: RawChip(
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 7.v,
          ),
          showCheckmark: false,
          labelPadding: EdgeInsets.zero,
          label: Text(
            timeItemModelObj.time!.value,
            style: TextStyle(
              color: (timeItemModelObj.isSelected?.value ?? false)
                  ? appTheme.whiteA700
                  : theme.colorScheme.primaryContainer,
              fontSize: 13.fSize,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w600,
            ),
          ),
          selected: (timeItemModelObj.isSelected?.value ?? false),
          backgroundColor: Colors.transparent,
          selectedColor: Colors.transparent,
          shape: (timeItemModelObj.isSelected?.value ?? false)
              ? RoundedRectangleBorder(
                  side: BorderSide(
                    color: theme.colorScheme.primary,
                    width: 1.h,
                  ),
                  borderRadius: BorderRadius.circular(
                    16.h,
                  ),
                )
              : RoundedRectangleBorder(
                  side: BorderSide(
                    color: theme.colorScheme.primaryContainer,
                    width: 1.h,
                  ),
                  borderRadius: BorderRadius.circular(
                    16.h,
                  ),
                ),
          onSelected: (value) {
            timeItemModelObj.isSelected!.value = value;
          },
        ),
      ),
    );
  }
}
