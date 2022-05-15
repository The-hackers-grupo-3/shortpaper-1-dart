import 'medicalRecord.dart';
import 'patient.dart';

class NeurologistRecord extends MedicalRecord {
  String _motor;
  String _reflexes;
  String _sensory;

  NeurologistRecord(
      this._motor,
      this._reflexes,
      this._sensory,
      id,
      DateTime creationDate,
      int weight,
      int height,
      String personalHistory,
      int heartRate,
      int bloodPressure,
      int saturation,
      List<MedicalRecord> registers)
      : super(id, creationDate, weight, height, personalHistory, heartRate,
            bloodPressure, saturation, registers);

//------------------------------------------
//--------------GETTER & SETTER-------------
//------------------------------------------

  String get motor {
    return _motor;
  }

  void set motor(String motor) {
    this._motor = motor;
  }

  String get reflexes {
    return _reflexes;
  }

  void set reflexes(String reflexes) {
    this._reflexes = reflexes;
  }

  String get sensory {
    return _sensory;
  }

  void set sensory(String sensory) {
    this._sensory = sensory;
  }

  @override
  create(Patient patient) {
    patient.medicalRecord.addMedicalRecord(this);
  }

  @override
  modify(MedicalRecord neurologistRec) {
    this.id = neurologistRec.id;
    this.creationDate = neurologistRec.creationDate;
    this.weight = neurologistRec.weight;
    this.height = neurologistRec.height;
    this.personalHistory = neurologistRec.personalHistory;
    this.heartRate = neurologistRec.heartRate;
    this.bloodPressure = neurologistRec.bloodPressure;
    this.saturation = neurologistRec.saturation;
  }
}
