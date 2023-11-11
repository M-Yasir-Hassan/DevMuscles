import 'package:yasir_s_application3/core/app_export.dart';import 'package:yasir_s_application3/presentation/video_screen/models/video_model.dart';/// A controller class for the VideoScreen.
///
/// This class manages the state of the VideoScreen, including the
/// current videoModelObj
class VideoController extends GetxController {Rx<VideoModel> videoModelObj = VideoModel().obs;

 }
