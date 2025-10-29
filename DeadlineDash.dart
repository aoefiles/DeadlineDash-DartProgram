import 'dart:core'; 

void main() {
  String namaTugas = "Mengumpulkan Proyek Akhir";
  
  // Atur tanggal deadline
  int targetTahun = 2025;
  int targetBulan = 11;
  int targetHari = 15;


  DateTime deadline = DateTime(targetTahun, targetBulan, targetHari);

  DateTime now = DateTime.now();
  DateTime today = DateTime(now.year, now.month, now.day);
  Duration selisih = deadline.difference(today);
  int sisaHari = selisih.inDays;
  
  print('--- ⏰ Deadline Dash ---');
  print('Tugas Anda: $namaTugas');
  print('Tanggal Deadline: $targetHari-$targetBulan-$targetTahun');
  print('--------------------------------------');

  //Pesan
  if (sisaHari > 0) {
    print('Sisa waktu Anda tinggal:');
    print('   $sisaHari HARI LAGI');
  } else if (sisaHari == 0) {
    print('❗ PERHATIAN:');
    print('   Batasnya adalah HARI INI!');
  } else {
    int telatHari = sisaHari.abs(); 
    print('❌ SUDAH LEWAT:');
    print('   Anda telah telat $telatHari hari.');
  }
}