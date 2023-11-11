import 'package:yasir_s_application3/core/app_export.dart';import 'package:yasir_s_application3/presentation/insight_page/models/insight_model.dart';/// A controller class for the InsightPage.
///
/// This class manages the state of the InsightPage, including the
/// current insightModelObj
class InsightController extends GetxController {InsightController(this.insightModelObj);

Rx<InsightModel> insightModelObj;

Rx<bool> stabilityTraining = false.obs;

Rx<bool> flashCycling = false.obs;

 }
