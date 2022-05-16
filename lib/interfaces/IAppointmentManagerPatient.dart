import '../classes/Appointment/appointment.dart';
import '../classes/doctor.dart';
import '../classes/patient.dart';
import '../enum/medicalAppointmentState.dart';

abstract class IAppointmentManagerPatient{
  void requestAppoinment(Doctor doctor, Patient patient, DateTime date);
  void cancelAppointment(Appointment appointment);
}