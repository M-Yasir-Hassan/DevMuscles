import '../../../core/app_export.dart';/// This class is used in the [paymentlist_item_widget] screen.
class PaymentlistItemModel {PaymentlistItemModel({this.image, this.id, }) { image = image  ?? Rx(ImageConstant.imgGroup4);id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? id;

 }
