import 'dart:io';
import 'tugas.dart';
import 'pencatatan.dart';

void main() {
  SistemPencatatanTugas sistem = SistemPencatatanTugas();

  while (true) {
    print('\n=== Menu ===');
    print('1. Tambah Tugas');
    print('2. Tampilkan Tugas');
    print('3. Urutkan Tugas');
    print('4. Cari Tugas');
    print('5. Tandai Selesai');
    print('0. Keluar');
    stdout.write('Pilih: ');
    String? pilih = stdin.readLineSync();

    switch (pilih) {
      case '1':
        print('Nama tugas: ');
        String nama = stdin.readLineSync() ?? '';

        print('Deadline (YYYY-MM-DD): ');
        String deadline = stdin.readLineSync() ?? '';

        Tugas tugasBaru = Tugas(nama, deadline);
        sistem.tambahTugas(tugasBaru);

        print('Tugas ditambahkan.');
        break;

      case '2':
        sistem.tampilkanTugas();
        break;

      case '3':
        sistem.urutkanTugas();
        print('Tugas sudah diurutkan.');
        break;

      case '4':
        print('Cari tugas (nama): ');
        String namaCari = stdin.readLineSync() ?? '';
        Tugas? tugas = sistem.cariTugas(namaCari);
        if (tugas != null) {
          print('Ditemukan: $tugas');
        } else {
          print('Tidak ditemukan.');
        }
        break;

      case '5':
        print('Nama tugas yang selesai: ');
        String namaSelesai = stdin.readLineSync() ?? '';
        Tugas? tugasSelesai = sistem.cariTugas(namaSelesai);
        if (tugasSelesai != null) {
          tugasSelesai.tandaiSelesai();
          print('Tugas sudah ditandai selesai.');
        } else {
          print('Tugas tidak ditemukan.');
        }
        break;

      case '0':
        print('Keluar program.');
        return;

      default:
        print('Pilihan salah.');
    }
  }
}
