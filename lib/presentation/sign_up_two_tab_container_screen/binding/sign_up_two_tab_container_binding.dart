import '../controller/sign_up_two_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignUpTwoTabContainerScreen.
///
/// This class ensures that the SignUpTwoTabContainerController is created when the
/// SignUpTwoTabContainerScreen is first loaded.
class SignUpTwoTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpTwoTabContainerController());
  }
}
