import 'package:shortpaper_dart/classes/Appointment/appointment.dart';
import 'package:shortpaper_dart/interfaces/IAppointmentManagerDoctor.dart';

import '../interfaces/specialty.dart';
import 'patient.dart';

class Doctor{

  String _name;
  List<Patient>? _patients;
  List<Specialty> _specialties;
  IAppointmentManagerDoctor appointmentManager;

  Doctor(this._name, this._specialties, this.appointmentManager);

//------------------------------------------
//--------------GETTER & SETTER-------------
//------------------------------------------

  String get name{
    return _name;
  }

  void set name(String name){
    this._name = name;
  }

  List<Patient>? get patients{
    return this._patients;
  }

  List<Specialty> get specialties{
    return this._specialties;
  }

  addSpecialty(Specialty specialty){
    this._specialties.add(specialty);
  }

  adPatient(Patient patient){
    this._patients?.add(patient);
  }

  accepAppointment(Appointment appointment){
    this.appointmentManager.acceptAppointment(appointment);
  }

  cancelAppointment(Appointment appointment){
    this.appointmentManager.cancelAppointment(appointment);
  }

  seeAppointment(){
    this.appointmentManager.seeAppointments().forEach((element) {
      print('Cita con el paciente: ${element.patient.name} el día ${element.appointmentDate}');
    });
  }

}