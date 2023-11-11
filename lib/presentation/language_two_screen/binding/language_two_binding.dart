import '../controller/language_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LanguageTwoScreen.
///
/// This class ensures that the LanguageTwoController is created when the
/// LanguageTwoScreen is first loaded.
class LanguageTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LanguageTwoController());
  }
}
