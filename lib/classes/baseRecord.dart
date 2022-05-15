import 'package:shortpaper_dart/classes/patient.dart';

import 'medicalRecord.dart';

class BaseRecord extends MedicalRecord{
  
  BaseRecord(String id, DateTime creationDate, int weight, int height, String personalHistory, int heartRate, int bloodPressure, int saturation, List<MedicalRecord> registers) : super(id, creationDate, weight, height, personalHistory, heartRate, bloodPressure, saturation, registers);

  @override
  create(Patient patient) {
    patient.medicalRecord.addMedicalRecord(this);
  }

  @override
  modify(BaseRecord baseRecord) {
    id = baseRecord.id;
    creationDate = baseRecord.creationDate;
    weight = baseRecord.weight;
    height = baseRecord.height;
    personalHistory = baseRecord.personalHistory;
    heartRate = baseRecord.heartRate;
    bloodPressure = baseRecord.bloodPressure;
    saturation = baseRecord.saturation;
  }

}