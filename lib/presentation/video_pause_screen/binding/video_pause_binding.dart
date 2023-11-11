import '../controller/video_pause_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VideoPauseScreen.
///
/// This class ensures that the VideoPauseController is created when the
/// VideoPauseScreen is first loaded.
class VideoPauseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VideoPauseController());
  }
}
