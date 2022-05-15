import '../enum/paymentStatus.dart';
import 'MedicalRecord/medicalRecord.dart';

class Patient{

  String _name;
  DateTime _birthday;
  String _profession;
  int _weight;
  int _height;
  String _phone;
  String _email;
  PaymentStatus _paymentStatus;
  MedicalRecord _medicalRecord;

  Patient(this._name, this._birthday, this._profession, this._weight, this._height, this._phone, this._email, this._paymentStatus, this._medicalRecord);

//------------------------------------------
//--------------GETTER & SETTER-------------
//------------------------------------------

  String get name{
    return _name;
  }

  void set name(String name){
    this._name = name;
  }

  DateTime get birthday{
    return _birthday;
  }

  void set birthday(DateTime birthday){
    this._birthday = birthday;
  }

  String get profession{
    return _profession;
  }

  void set profession(String profession){
    this._profession = profession;
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

  String get phone{
    return _phone;
  }

  void set phone(String phone){
    this._phone = phone;
  }

  String get email{
    return _email;
  }

  void set email(String email){
    this._email = email;
  }

  PaymentStatus get paymentStatus{
    return this._paymentStatus;
  }

  void set paymentStatus(PaymentStatus paymentStatus){
    this._paymentStatus = paymentStatus;
  }

  MedicalRecord get medicalRecord{
    return _medicalRecord;
  }

}