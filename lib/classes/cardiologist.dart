import '../interfaces/specialty.dart';
import 'medicalRecord.dart';
import 'patient.dart';

class Cardiologist implements Specialty{

  @override
  void createMedicalRecord(Patient patient, MedicalRecord medicalRecord) {
    medicalRecord.create(patient);
  }

  @override
  void modifyMedicalRecord(MedicalRecord medicalRecord) {
    medicalRecord.modify(medicalRecord);
  }

}