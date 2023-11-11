import '../../../core/app_export.dart';import 'days_item_model.dart';/// This class defines the variables used in the [insight_page],
/// and is typically used to hold data that is passed between different parts of the application.
class InsightModel {Rx<List<DaysItemModel>> daysItemList = Rx([DaysItemModel(day: "M".obs,number: "16".obs),DaysItemModel(day: "T".obs,number: "17".obs),DaysItemModel(day: "W".obs,number: "18".obs),DaysItemModel(day: "T".obs,number: "19".obs),DaysItemModel(day: "F".obs,number: "20".obs),DaysItemModel(day: "S".obs,number: "21".obs),DaysItemModel(day: "S".obs,number: "22".obs)]);

 }
