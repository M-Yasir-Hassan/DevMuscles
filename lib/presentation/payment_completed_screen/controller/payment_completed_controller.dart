import 'package:yasir_s_application3/core/app_export.dart';
import 'package:yasir_s_application3/presentation/payment_completed_screen/models/payment_completed_model.dart';

/// A controller class for the PaymentCompletedScreen.
///
/// This class manages the state of the PaymentCompletedScreen, including the
/// current paymentCompletedModelObj
class PaymentCompletedController extends GetxController {
  Rx<PaymentCompletedModel> paymentCompletedModelObj =
      PaymentCompletedModel().obs;
}
