import '../../../core/app_export.dart';/// This class is used in the [reviews_item_widget] screen.
class ReviewsItemModel {ReviewsItemModel({this.sharonJem, this.name, this.title, this.date, this.description, this.id, }) { sharonJem = sharonJem  ?? Rx(ImageConstant.img47);name = name  ?? Rx("Sharon Jem");title = title  ?? Rx("4.8");date = date  ?? Rx("2d ago");description = description  ?? Rx("Had such an amazing session with Maria. She instantly picked up on the level of my fitness and adjusted the workout to suit me whilst also pushing me to my limits.");id = id  ?? Rx(""); }

Rx<String>? sharonJem;

Rx<String>? name;

Rx<String>? title;

Rx<String>? date;

Rx<String>? description;

Rx<String>? id;

 }
