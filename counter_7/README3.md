# Tugas 9: Integrasi Web Service pada Flutter

**Undissya Putri Maharani**<br>
**2106650935 - PBP F**

##  Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON? ## 

Pengambilan data JSON tanpa model dengan menggunakan jsonDecode() yang akan mengirim HTTP Response. Hal ini kurang baik untuk dilakukan karena tidak ada struktur dalam konversi raw data menjadi Dart object. Hasilnya, program akan berantakan dan sulit dalam melakukan debugging.  

## Widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya. ##

- FutureBuilder: menampilkan data yang diimport dari webservice
- TextSpan: menampung properti teks
- Flexible: mendapatkan halaman yang responsive
- CheckBox: menampilkan checkbox yang menerima event 
- ElevatedButton: membuat button dan style 

##  Mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter ##

- Membuat model untuk data yang diambil dari internet
- Membuat fungsi fetch data dengan HTTP GET (ambil data)
- Menampilkan data dengan FutureBuilder
- Mengembalikan response dengan http.get dan men-konversinya menjadi Dart object

##  Implementasi checklist ##

1. Menambahkan tombol navigasi `My Watch List` pada drawer dan akan menampilkan page list judul film mywatchlist. <br>
2. Membuat folder baru bernama model dan masukkan model budget bersama file baru mywatchlist ke dalamnya. <br>
3. Membuat folder baru bernama page dan memasukkan file data, drawer, form ke dalamnya. <br>
4. Buat file baru mywatchlist (detail data film) dan mywatchlist_face (list judul film) dalam folder page untuk menampilkan data JSON mywatchlist. <br>
5. Buat navigasi antara mywatchlist_face dengan mywatchlist untuk menampilkan detail datanya. <br>
6. Ambil data melalui halaman JSON Django tugas 3 lalu buat fungsinya pada folder util dan file fetch. <br>
7. Buat checkbox pada list judul yang melakukan fungsi pengubahan validasi "sudah ditonton". <br> 