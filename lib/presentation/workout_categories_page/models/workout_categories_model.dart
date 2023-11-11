import '../../../core/app_export.dart';import 'workoutcategories_item_model.dart';/// This class defines the variables used in the [workout_categories_page],
/// and is typically used to hold data that is passed between different parts of the application.
class WorkoutCategoriesModel {Rx<List<WorkoutcategoriesItemModel>> workoutcategoriesItemList = Rx([WorkoutcategoriesItemModel(wakeUpCall:ImageConstant.imgImage.obs,title: "Wake Up Call".obs,subtitle: "04 Workouts  for Beginner".obs),WorkoutcategoriesItemModel(wakeUpCall:ImageConstant.imgImage10.obs),WorkoutcategoriesItemModel(wakeUpCall:ImageConstant.imgImage11.obs),WorkoutcategoriesItemModel(wakeUpCall:ImageConstant.imgImage160x260.obs)]);

 }
