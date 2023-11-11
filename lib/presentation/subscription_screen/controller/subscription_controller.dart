import 'package:yasir_s_application3/core/app_export.dart';
import 'package:yasir_s_application3/presentation/subscription_screen/models/subscription_model.dart';

/// A controller class for the SubscriptionScreen.
///
/// This class manages the state of the SubscriptionScreen, including the
/// current subscriptionModelObj
class SubscriptionController extends GetxController {
  Rx<SubscriptionModel> subscriptionModelObj = SubscriptionModel().obs;

  Rx<String> radioGroup = "".obs;

  Rx<String> radioGroup1 = "".obs;
}
