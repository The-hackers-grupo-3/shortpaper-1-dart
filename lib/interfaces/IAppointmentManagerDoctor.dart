import 'package:shortpaper_dart/classes/Appointment/appointment.dart';

abstract class IAppointmentManagerDoctor {
  void acceptAppointment(Appointment appointment);
  void cancelAppointment(Appointment appointment);
  List<Appointment> seeAppointments();
  Appointment searchAppointment(Appointment appointment);
}
