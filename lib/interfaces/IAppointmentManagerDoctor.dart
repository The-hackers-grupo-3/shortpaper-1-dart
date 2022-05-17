import 'package:shortpaper_dart/classes/Appointment/appointment.dart';
import 'package:shortpaper_dart/interfaces/specialty.dart';

import '../classes/MedicalRecord/medicalRecord.dart';

abstract class IAppointmentManagerDoctor {
  void acceptAppointment(Appointment appointment);
  void cancelAppointment(Appointment appointment);
  List<Appointment> seeAppointments();
  Appointment searchAppointment(Appointment appointment);
  void completeAppoinment(Appointment appointment, Specialty specialty, MedicalRecord medicalRecord);
}
