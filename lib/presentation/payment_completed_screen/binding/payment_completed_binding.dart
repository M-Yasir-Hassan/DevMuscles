import '../controller/payment_completed_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PaymentCompletedScreen.
///
/// This class ensures that the PaymentCompletedController is created when the
/// PaymentCompletedScreen is first loaded.
class PaymentCompletedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentCompletedController());
  }
}
