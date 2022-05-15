import 'package:shortpaper_dart/classes/Appointment/appointment.dart';
import 'package:shortpaper_dart/classes/patient.dart';
import 'package:shortpaper_dart/classes/doctor.dart';
import 'package:shortpaper_dart/enum/medicalAppointmentState.dart';
import 'package:shortpaper_dart/interfaces/IAppointmentManagerPatient.dart';

class AppointmentManagerImplPatient implements IAppointmentManagerPatient{

  List<Appointment> _appointments;

  AppointmentManagerImplPatient(this._appointments);

  @override
  void requestAppoinment(Doctor doctor, Patient patient, DateTime date) {
    this._appointments.add(new Appointment(date, MedicalAppointmentState.PENDING, doctor, patient));
    print('El paciente ${patient.name} ha solicitado una cita al Doctor ${doctor.name} para el dia ${date}.');
  }
  
  @override
  void cancelAppointment(Appointment appointment) {
    appointment.status = MedicalAppointmentState.CANCELED;
    print('El Paciente ${appointment.doctor.name} cancelo la cita agendada ${appointment.patient.name} para el dia ${appointment.appointmentDate}.');
  }

}