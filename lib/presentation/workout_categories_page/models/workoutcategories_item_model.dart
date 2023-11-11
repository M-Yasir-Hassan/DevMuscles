import '../../../core/app_export.dart';/// This class is used in the [workoutcategories_item_widget] screen.
class WorkoutcategoriesItemModel {WorkoutcategoriesItemModel({this.wakeUpCall, this.title, this.subtitle, this.id, }) { wakeUpCall = wakeUpCall  ?? Rx(ImageConstant.imgImage);title = title  ?? Rx("Wake Up Call");subtitle = subtitle  ?? Rx("04 Workouts  for Beginner");id = id  ?? Rx(""); }

Rx<String>? wakeUpCall;

Rx<String>? title;

Rx<String>? subtitle;

Rx<String>? id;

 }
