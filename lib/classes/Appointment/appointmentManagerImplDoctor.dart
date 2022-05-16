import 'package:shortpaper_dart/enum/medicalAppointmentState.dart';
import 'package:shortpaper_dart/interfaces/IAppointmentManagerDoctor.dart';
import 'package:shortpaper_dart/interfaces/specialty.dart';
import 'package:shortpaper_dart/classes/MedicalRecord/medicalRecord.dart';
import 'package:shortpaper_dart/classes/Appointment/appointment.dart';

class AppointmentManagerImplDoctor implements IAppointmentManagerDoctor {
  List<Appointment> _appointments;

  AppointmentManagerImplDoctor(this._appointments);

  @override
  void acceptAppointment(Appointment appointment) {
    appointment.status = MedicalAppointmentState.SHCEDULED;
    print(
        'El Doctor ${appointment.doctor.name} acepto la cita solicitada por el paciente ${appointment.patient.name} para el dia ${appointment.appointmentDate}.');
  }

  @override
  void cancelAppointment(Appointment appointment) {
    appointment.status = MedicalAppointmentState.CANCELED;
    print(
        'El Doctor ${appointment.doctor.name} cancelo la cita solicitada por el paciente ${appointment.patient.name} para el dia ${appointment.appointmentDate}.');
  }

  @override
  Appointment searchAppointment(Appointment appointment) {
    for (var i = 0; i < _appointments.length; i++) {
      //recorre todo el array de appointments
      if (this._appointments[i] == appointment) {
        return this._appointments[i];
      }
    }
    return this._appointments[
        0]; //Esto solo esta para que no chille, nunca deberia retornar esto porque siempre va a recibir una appointment que si esta
  }

  @override
  List<Appointment> seeAppointments() {
    return this._appointments;
  }
}
