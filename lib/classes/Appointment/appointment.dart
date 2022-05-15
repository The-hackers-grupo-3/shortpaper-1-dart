import 'package:shortpaper_dart/classes/patient.dart';
import 'package:shortpaper_dart/enum/medicalAppointmentState.dart';

import '../doctor.dart';

class Appointment{

  DateTime _appointmentDate;
  MedicalAppointmentState _status;
  Doctor _doctor;
  Patient _patient;

  Appointment(this._appointmentDate, this._status, this._doctor, this._patient);

//------------------------------------------
//--------------GETTER & SETTER-------------
//------------------------------------------

  DateTime get appointmentDate {
    return _appointmentDate;
  }

  void set appointmentDate(DateTime appointmentDate) {
    this._appointmentDate = appointmentDate;
  }

  MedicalAppointmentState get status {
    return _status;
  }

  void set status(MedicalAppointmentState status) {
    this._status = status;
  }

  Doctor get doctor {
    return _doctor;
  }

  Patient get patient {
    return _patient;
  }

}