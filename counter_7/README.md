# Tugas 7: Elemen Dasar Flutter

**Undissya Putri Maharani**<br>
**2106650935 - PBP F**

##  Apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya. ## 

Stateless Widget <br>
Kondisi dimana widget tidak dapat berubah selama ada event internal dalam runtime aplikasi. Tampilan dari widget statis dan tidak akan berubah. Biasanya digunakan untuk default widget seperti text, icon, raised button.<br>

Stateful Widget<br>
Widget ini akan berubah-ubah secara dinamis selama runtime sehingga bukan merupakan final properties. Perubahan widget dapat dipengaruhi oleh eksternal event seperti user menge-klik tombol. Perlu implementasi `setState()` agar value bisa ter-update secara otomatis.

Stateless vs Stateful Widget<br>
- Stateless : update ketika inisialisasi oleh developer vs Stateful : update secara dinamis ketika mendapat trigger<br>
- Stateless : contohnya Text, icons, RaisedButtons vs Stateful : contohnya radio buttons, Checkboxes<br>

## Widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya. ##

- Icon: menambahkan icon untuk memberikan visualisasi widget
- Text: membuat teks dengan styling-nya
- Container: Membungkus widget agar dapat memperoleh behaviour secara kelompok 
- FloatinActionButton: membuat tombol dengan aksi tertentu
- Padding: memberikan ruang dengan ukuran tertentu
- Spacer: memberikan ruang antar widget


##  Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut. ##

`setState()` digunakan untuk memberi notifikasi karena ada perubahan internal. Kita perlu memanggil `setState()` agar perubahan value dapat otomatis tersimpan. Contoh penggunaannya :
```  setState(() { _myState = newValue; }); ```
<br>
Variabel yang berdampak adalah `_incrementCounter` dan `_decrementCounter`. Value akan berubah dan akan disimpan ketika user melakukan event, `setState()` akan meng-update value ketika ada perubahan.<br>

##  Jelaskan perbedaan antara `const` dengan `final`. ##

`const`<br>
Deklarasi variabel immutable yang value-nya sudah diketahui dan statis saat kompilasi. <br>

`final`<br>
Deklarasi variabel immutable yang value-nya didefinisikan satu kali.<br>

##  Implementasi checklist ##

1. Membuat aplikasi baru dengan nama `counter_7` <br>
2. Mengubah judul dengan `Program Counter` <br>
3. Membuat duplikasi tombol counter dengan tujuan increment value <br>
4. Mengubah logika ` _counter % 2 == 0 ` text pada tengah tampilan, untuk counter ganjil akan memunculkan text GANJIL dengan warna biru dan untuk counter genap akan memunculkan text GENAP dengan warna merah. <br>
5. Menjalankan logika `counter >= 0` pada `_decrementCounter`, tombol tidak memiliki efek <br>
6. Mengatur letak tombol decremen dengan padding <br>