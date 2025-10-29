# Deadline Dash - Penghitung Mundur Deadline Sederhana
Ini adalah program konsol (terminal) sederhana yang ditulis dalam bahasa Dart. Program ini bertujuan untuk menghitung sisa hari dari tanggal hari ini ke tanggal deadline yang telah ditentukan di dalam kode.

##🌟 Fitur Utama
Hitung Mundur: Menghitung jumlah hari tersisa secara akurat.
Status Dinamis: Memberikan output yang berbeda-beda tergantung situasinya:
- Masih ada sisa waktu.
- Deadline adalah hari ini.
- Deadline sudah terlewat.

##🧠 Penjelasan Logika Program
Program ini bekerja dalam beberapa langkah sederhana untuk menghitung selisih hari:

1. Inisialisasi DateTime: Program ini membuat dua objek DateTime utama:
deadline: Dibuat berdasarkan variabel targetTahun, targetBulan, dan targetHari yang Anda atur. Ini adalah target waktu di masa depan.
now: Dibuat menggunakan DateTime.now(), yang menangkap waktu tepat saat ini (termasuk jam, menit, dan detik).

2.Normalisasi Tanggal (Langkah Kunci) Untuk menghitung selisih hari dengan adil, kita tidak peduli dengan jam atau menitnya. Kita hanya ingin membandingkan "tanggal" vs "tanggal".
Oleh karena itu, kita membuat objek DateTime ketiga bernama today.
today dibuat hanya menggunakan now.year, now.month, dan now.day. Ini secara efektif mengatur waktu "hari ini" ke pukul 00:00 (tengah malam).
Ini memastikan perbandingan yang adil (apel-lawan-apel) dengan deadline, yang juga diatur pada pukul 00:00.

3.Menghitung Selisih (Duration)
Program ini menggunakan metode deadline.difference(today).
Perhitungan ini mengembalikan sebuah objek Duration (Durasi), yang menyimpan selisih waktu antara dua tanggal tersebut.

4.Mendapatkan Total Hari (.inDays)
Objek Duration memiliki properti .inDays. Properti ini secara cerdas mengekstrak selisih waktu hanya dalam hitungan hari (dibulatkan ke bawah).
Hasil dari selisih.inDays adalah sebuah angka (int) yang bisa positif (deadline di masa depan), nol (deadline hari ini), atau negatif (deadline sudah lewat).

5.Logika if/else (Menampilkan Hasil)
Program kemudian memeriksa nilai sisaHari tersebut:
Jika sisaHari > 0 (positif), program mencetak pesan "Sisa ... HARI LAGI".
Jika sisaHari == 0 (nol), program mencetak pesan "Batasnya adalah HARI INI!".
Jika sisaHari < 0 (negatif), program menggunakan .abs() untuk mengubah angka negatif menjadi positif (misal: -3 menjadi 3) dan mencetak pesan "Anda telah telat ... hari."
