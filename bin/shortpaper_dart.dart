import 'package:shortpaper_dart/classes/Appointment/appointmentManagerImplDoctor.dart';
import 'package:shortpaper_dart/classes/Appointment/appointmentManagerImplPatient.dart';
import 'package:shortpaper_dart/classes/MedicalRecord/baseRecord.dart';
import 'package:shortpaper_dart/classes/Specialty/cardiologist.dart';
import 'package:shortpaper_dart/classes/doctor.dart';
import 'package:shortpaper_dart/classes/notifier.dart';
import 'package:shortpaper_dart/classes/patient.dart';

void main() {
//----------------------------------------TEST-----------------------------------------
//-----------Los Pacientes pueden cancelar las citas o pueden no aceptarlas------------
//-------------------------------------------------------------------------------------

//??
  var patientMedicalRecord = BaseRecord(
      "1", DateTime.now(), 1, 1, "Dolor de barriga", 1, 1, 1, [], Notifier());

// Appointment Manager para Doctor y Patient
  var appointmentManagerPatient = AppointmentManagerImplPatient([]);
  var appointmentManagerDoctor = AppointmentManagerImplDoctor([]);

// //Especialidad del doctor
  var specialtyDoctor = Cardiologist();

// //Paciente
  var patient = Patient(
    "Manuel",
    DateTime.now(),
    "Student",
    68,
    178,
    "0234242347223",
    "manuel@gmail.com",
    patientMedicalRecord,
    appointmentManagerPatient,
  );

// //Doctor
  var doctor = Doctor(
    "Humberto",
    [specialtyDoctor],
    appointmentManagerDoctor,
  );

// //Paciente solicita una cita
  patient.appointmentManager.requestAppoinment(doctor, patient, DateTime.now());

// //Cancelar la cita
  var appointment = patient.appointmentManager.seeAppointments()[0];

  patient.appointmentManager.cancelAppointment(appointment);
  
}
