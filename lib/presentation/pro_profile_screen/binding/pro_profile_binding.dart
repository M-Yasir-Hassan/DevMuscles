import '../controller/pro_profile_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProProfileScreen.
///
/// This class ensures that the ProProfileController is created when the
/// ProProfileScreen is first loaded.
class ProProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProProfileController());
  }
}
