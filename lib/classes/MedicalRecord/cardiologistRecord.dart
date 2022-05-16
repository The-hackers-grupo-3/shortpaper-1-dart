import 'package:shortpaper_dart/classes/notifier.dart';

import 'medicalRecord.dart';
import '../patient.dart';
import 'package:flutter/foundation.dart';

class CardiologistRecord extends MedicalRecord<CardiologistRecord> {
  int _QRSduration;
  int _QTc;
  int _Pwave;

  CardiologistRecord(
      this._QRSduration,
      this._Pwave,
      this._QTc,
      id,
      DateTime creationDate,
      int weight,
      int height,
      String personalHistory,
      int heartRate,
      int bloodPressure,
      int saturation,
      List<MedicalRecord> registers,
      Notifier notifier)
      : super(id, creationDate, weight, height, personalHistory, heartRate,
            bloodPressure, saturation, registers, notifier);

//------------------------------------------
//--------------GETTER & SETTER-------------
//------------------------------------------

  int get QRSduration {
    return _QRSduration;
  }

  void set QRSduration(int QRSduration) {
    this._QRSduration = QRSduration;
  }

  int get QTc {
    return _QTc;
  }

  void set QTc(int QTc) {
    this._QTc = QTc;
  }

  Notifier get notifier {
    return notifier;
  }

  int get Pwave {
    return _Pwave;
  }

  void set Pwave(int Pwave) {
    this._Pwave = Pwave;
  }

  @override
  create(Patient patient) {
    patient.medicalRecord.addMedicalRecord(this);
  }

  @override
  modify(CardiologistRecord cardiologistRec) {
    id = cardiologistRec.id;
    creationDate = cardiologistRec.creationDate;
    weight = cardiologistRec.weight;
    height = cardiologistRec.height;
    personalHistory = cardiologistRec.personalHistory;
    heartRate = cardiologistRec.heartRate;
    bloodPressure = cardiologistRec.bloodPressure;
    saturation = cardiologistRec.saturation;
    QRSduration = cardiologistRec.QRSduration;
    QTc = cardiologistRec.QTc;
    Pwave = cardiologistRec.Pwave;

    notifier.notify("El cardiologo modifico tu record medico");
  }
}
