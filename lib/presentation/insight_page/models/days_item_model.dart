import '../../../core/app_export.dart';/// This class is used in the [days_item_widget] screen.
class DaysItemModel {DaysItemModel({this.day, this.number, this.id, }) { day = day  ?? Rx("M");number = number  ?? Rx("16");id = id  ?? Rx(""); }

Rx<String>? day;

Rx<String>? number;

Rx<String>? id;

 }
