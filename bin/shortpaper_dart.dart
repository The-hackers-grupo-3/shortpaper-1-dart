import 'package:shortpaper_dart/classes/MedicalRecord/baseRecord.dart';
import 'package:shortpaper_dart/classes/notifier.dart';
import 'package:shortpaper_dart/enum/paymentStatus.dart';
import 'package:shortpaper_dart/shortpaper_dart.dart' as shortpaper_dart;
import '../lib/classes/Specialty/cardiologist.dart';
import '../lib/classes/doctor.dart';
import '../lib/classes/MedicalRecord/medicalRecord.dart';
import '../lib/classes/patient.dart';
import '../lib/classes/MedicalRecord/cardiologistRecord.dart';

void main() {
////////////////Modificar Registro Médico de un cardiologo

  // var specialty1 = Cardiologist();

  // var patientMedicalRecord = BaseRecord("1", DateTime.now(), 1, 1, "", 1, 1, 1, []);

  // var patient =  Patient("Manuel", DateTime.now(), "Student", 78, 178, "324324", "manuel@gmail.com", PaymentStatus.PAYED, patientMedicalRecord);

  // var doctor = Doctor("name", [], [specialty1]);
  Notifier event = Notifier();
  MedicalRecord record = CardiologistRecord(12, 12, 12, 'rer', DateTime.now(),
      64, 164, 'Perro', 65, 45, 14, [], event);
  print(
      '${record.id} ${record.creationDate} ${record.weight} ${record.height}');

  MedicalRecord recordmodificado = CardiologistRecord(15, 15, 15, 'rer',
      DateTime.now(), 69, 169, 'Gato', 69, 49, 19, [], event);
}
