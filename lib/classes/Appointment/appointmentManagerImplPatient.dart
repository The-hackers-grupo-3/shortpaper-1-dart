import 'package:shortpaper_dart/classes/Appointment/appointment.dart';
import 'package:shortpaper_dart/classes/patient.dart';
import 'package:shortpaper_dart/classes/doctor.dart';
import 'package:shortpaper_dart/enum/medicalAppointmentState.dart';
import 'package:shortpaper_dart/interfaces/IAppointmentManagerPatient.dart';

class AppointmentManagerImplPatient implements IAppointmentManagerPatient {
  List<Appointment> _appointments;

  AppointmentManagerImplPatient(this._appointments);

  @override
  void requestAppoinment(Doctor doctor, Patient patient, DateTime date) {
    var appointment =
        Appointment(date, MedicalAppointmentState.PENDING, doctor, patient);
    this._appointments.add(appointment);
    doctor.appointmentManager.seeAppointments().add(appointment);
    print(
        'El paciente ${patient.name} ha solicitado una cita al Doctor ${doctor.name} para el dia ${date}.\n\n');
  }

  @override
  void cancelAppointment(Appointment appointment) {
    appointment.status = MedicalAppointmentState.CANCELED;
    print(
        'El Paciente ${appointment.patient.name} cancelo la cita con el doctor ${appointment.doctor.name} del dia ${appointment.appointmentDate}.\n\n');
  }

  @override
  List<Appointment> seeAppointments() {
    return this._appointments;
  }
}
