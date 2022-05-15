import '../interfaces/specialty.dart';
import 'patient.dart';

class Doctor{

  String _name;
  List<Patient> _patients;
  List<Specialty> _specialties;

  Doctor(this._name, this._patients, this._specialties);

//------------------------------------------
//--------------GETTER & SETTER-------------
//------------------------------------------

  String get name{
    return _name;
  }

  void set name(String name){
    this._name = name;
  }

  List<Patient> get patients{
    return this._patients;
  }

  List<Specialty> get specialties{
    return this._specialties;
  }

  addSpecialty(Specialty specialty){
    this._specialties.add(specialty);
  }

  adPatient(Patient patient){
    this._patients.add(patient);
  }

}