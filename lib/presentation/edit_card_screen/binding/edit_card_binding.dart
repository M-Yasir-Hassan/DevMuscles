import '../controller/edit_card_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EditCardScreen.
///
/// This class ensures that the EditCardController is created when the
/// EditCardScreen is first loaded.
class EditCardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditCardController());
  }
}
