import 'status_tugas.dart';

class Tugas {
  String _nama;
  String _deadline;
  StatusTugas _status;

  Tugas(this._nama, this._deadline, [this._status = StatusTugas.belumSelesai]);

  String get nama => _nama;
  set nama(String namaBaru) => _nama = namaBaru;

  String get deadline => _deadline;
  set deadline(String namaBaru) => _deadline = namaBaru;

  StatusTugas get status => _status;
  set status(StatusTugas namaBaru) => _status = namaBaru;

  void tandaiSelesai() {
    _status = StatusTugas.selesai;
  }

  @override
  String toString() {
    return 'Tugas: $_nama, Deadline: ${_deadline}, Status: ${_status.name}';
  }
}
