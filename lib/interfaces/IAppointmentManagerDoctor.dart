import 'package:shortpaper_dart/interfaces/specialty.dart';

import '../classes/Appointment/appointment.dart';
import '../classes/MedicalRecord/medicalRecord.dart';

abstract class IAppointmentManagerDoctor {
  void acceptAppointment(Appointment appointment);
  void cancelAppointment(Appointment appointment);
  List<Appointment> seeAppointments();
  Appointment searchAppointment(Appointment appointment);
}
