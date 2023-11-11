import 'package:yasir_s_application3/core/app_export.dart';
import 'package:yasir_s_application3/presentation/onboarding_two_screen/models/onboarding_two_model.dart';

/// A controller class for the OnboardingTwoScreen.
///
/// This class manages the state of the OnboardingTwoScreen, including the
/// current onboardingTwoModelObj
class OnboardingTwoController extends GetxController {
  Rx<OnboardingTwoModel> onboardingTwoModelObj = OnboardingTwoModel().obs;
}
