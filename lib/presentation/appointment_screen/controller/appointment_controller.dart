import 'package:yasir_s_application3/core/app_export.dart';import 'package:yasir_s_application3/presentation/appointment_screen/models/appointment_model.dart';import 'package:table_calendar/table_calendar.dart';/// A controller class for the AppointmentScreen.
///
/// This class manages the state of the AppointmentScreen, including the
/// current appointmentModelObj
class AppointmentController extends GetxController {Rx<AppointmentModel> appointmentModelObj = AppointmentModel().obs;

DateTime? rangeStart;

DateTime? rangeEnd;

DateTime? selectedDay;

Rx<DateTime> focusedDay = DateTime.now().obs;

Rx<RangeSelectionMode> rangeSelectionMode = RangeSelectionMode.toggledOn.obs;

 }
