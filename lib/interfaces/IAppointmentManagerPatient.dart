import 'package:shortpaper_dart/classes/Appointment/appointment.dart';
import 'package:shortpaper_dart/classes/doctor.dart';
import 'package:shortpaper_dart/classes/patient.dart';

abstract class IAppointmentManagerPatient {
  void requestAppoinment(Doctor doctor, Patient patient, DateTime date);
  void cancelAppointment(Appointment appointment);
  List<Appointment> seeAppointments();
}
