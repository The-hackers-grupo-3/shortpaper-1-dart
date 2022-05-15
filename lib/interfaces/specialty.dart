import '../classes/MedicalRecord/medicalRecord.dart';
import '../classes/patient.dart';

abstract class Specialty{
  void createMedicalRecord(Patient patient, MedicalRecord medicalRecord);
  void modifyMedicalRecord(MedicalRecord medicalRecord);
}