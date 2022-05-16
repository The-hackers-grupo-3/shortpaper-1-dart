import 'package:shortpaper_dart/classes/Appointment/appointment.dart';
import 'package:shortpaper_dart/classes/Appointment/appointmentManagerImplDoctor.dart';
import 'package:shortpaper_dart/classes/Appointment/appointmentManagerImplPatient.dart';
import 'package:shortpaper_dart/classes/MedicalRecord/baseRecord.dart';
import 'package:shortpaper_dart/classes/notifier.dart';
import 'package:shortpaper_dart/enum/medicalAppointmentState.dart';
import 'package:shortpaper_dart/enum/paymentStatus.dart';
import 'package:shortpaper_dart/interfaces/IAppointmentManagerPatient.dart';
import 'package:shortpaper_dart/shortpaper_dart.dart' as shortpaper_dart;
import '../lib/classes/Specialty/cardiologist.dart';
import '../lib/classes/doctor.dart';
import '../lib/classes/MedicalRecord/medicalRecord.dart';
import '../lib/classes/patient.dart';
import '../lib/classes/MedicalRecord/cardiologistRecord.dart';

void main() {

//----------------------------------------TEST-----------------------------------------
//-----------Los Pacientes pueden cancelar las citas o pueden no aceptarlas------------
//-------------------------------------------------------------------------------------

//??
var patientMedicalRecord = BaseRecord("1", DateTime.now(), 1, 1, "Dolor de barriga", 1, 1, 1, [], Notifier());

//Appointment Manager para Doctor y Patient
var appointmentManagerPatient = AppointmentManagerImplPatient([]);
var appointmentManagerDoctor = AppointmentManagerImplDoctor([]);

//Especialidad del doctor
var specialtyDoctor = Cardiologist();

//Paciente
var patient = Patient("Manuel", DateTime.now(), "Student", 68, 178, "0234242347223", "manuel@gmail.com", patientMedicalRecord, appointmentManagerPatient); 

//Doctor
var doctor = Doctor("Humberto", [specialtyDoctor], appointmentManagerDoctor);

//Paciente solicita una cita
patient.appointmentManager.requestAppoinment(doctor, patient, DateTime.now());

print('Los appointment de los pacientes $appointmentManagerPatient\n');      //Chequeo
print('Los appointment de los doctor $appointmentManagerDoctor\n');          //Chequeo

//Cancelar la cita
var appointment = patient.appointmentManager.seeAppointments()[0];

patient.appointmentManager.cancelAppointment(appointment);

print('Los appointment de los pacientes $appointmentManagerPatient\n');      //Chequeo
print('Los appointment de los doctor $appointmentManagerDoctor\n');          //Chequeo

}