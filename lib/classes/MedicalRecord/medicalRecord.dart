import '../patient.dart';

abstract class MedicalRecord<T>{

  String _id;
  DateTime _creationDate;
  int _weight;
  int _height;
  String _personalHistory;
  int _heartRate;
  int _bloodPressure;
  int _saturation;
  List<MedicalRecord> _registers;

  MedicalRecord(this._id, this._creationDate, this._weight, this._height, this._personalHistory, this._heartRate, this._bloodPressure, this._saturation, this._registers);

//------------------------------------------
//--------------GETTER & SETTER-------------
//------------------------------------------

  String get id{
    return _id;
  }  

  void set id(String id){
    this._id = id;
  }

  DateTime get creationDate{
    return _creationDate;
  }

  void set creationDate(DateTime creationDate){
    this._creationDate = creationDate;
  }

  int get weight{
    return _weight;
  }

  void set weight(int weight){
    this._weight = weight;
  }

  int get height{
    return _height;
  }

  void set height(int height){
    this._height = height;
  }

  String get personalHistory{
    return _personalHistory;
  }  

  void set personalHistory(String personalHistory){
    this._personalHistory = personalHistory;
  }

  int get heartRate{
    return _heartRate;
  }

  void set heartRate(int heartRate){
    this._heartRate = heartRate;
  }

  int get bloodPressure{
    return _bloodPressure;
  }

  void set bloodPressure(int bloodPressure){
    this._bloodPressure = bloodPressure;
  }

  int get saturation{
    return _saturation;
  }

  void set saturation(int saturation){
    this._saturation = saturation;
  }

  List<MedicalRecord> get registers{
    return _registers;
  }

  create(Patient patient);
  modify(T medicalRecord);

  addMedicalRecord(MedicalRecord medicalRecord){
    this._registers.add(medicalRecord);
  }

  

}