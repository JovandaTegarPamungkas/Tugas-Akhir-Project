import 'tugas.dart';

class SistemPencatatanTugas {
  List<Tugas> daftarTugas = [];

  void tambahTugas(Tugas tugas) {
    daftarTugas.add(tugas);
  }

  void tampilkanTugas() {
    if (daftarTugas.isEmpty) {
      print('Tidak ada tugas.');
      return;
    }
    for (var tugas in daftarTugas) {
      print(tugas);
    }
  }

  void urutkanTugas() {
    daftarTugas.sort((a, b) => a.deadline.compareTo(b.deadline));
  }

  Tugas? cariTugas(String nama) {
    for (var tugas in daftarTugas) {
      if (tugas.nama.toLowerCase() == nama.toLowerCase()) {
        return tugas;
      }
    }
    return null;
  }
}
