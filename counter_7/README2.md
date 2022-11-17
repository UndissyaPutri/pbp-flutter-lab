# Tugas 8: Flutter Form

**Undissya Putri Maharani**<br>
**2106650935 - PBP F**

##  Perbedaan `Navigator.push` dan `Navigator.pushReplacement`. ## 

<b> Navigator.push </b><br>
Navigator.push adalah method yang digunakan untuk menambahkan route baru pada atas navigation stack. Dengan menggunakan MaterialPageRoute, transisi antar route dapat dilakukan. <br>

<b> Navigator.pushReplacement </b><br>
Navigator.pushReplacement akan mengubah route pada navigator ke context yang paling dekat dengan cara push route (replace) dan tidak dapat pindah ke route sebelumnya.

## Widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya. ##

- Icon: menambahkan icon untuk memberikan visualisasi widget
- Text: membuat teks dengan styling-nya
- Drawer: membuat fitur navigasi ke suatu page
- Form: membungkus form field jadi satu form
- DropdownButton: membuat button yang dapat memunculkan pilihan
- ListTile: menampilkan single fixed height row yang berisi teks
- TextFormField: menyediakan field untuk input teks yang terintegrasi dengan form
- Expanded: memperluas children widget sehingga konsisten penuh
- Align: mengatur posisi widget
- SizedBox: mengatur ukuran dalam box
- Padding: memberikan ruang dengan ukuran tertentu


##  Jenis-jenis event yang ada pada Flutter ##

- onPressed: saat widget ditekan
- onChanged: saat widget diubah
- onSaved: saat widget disimpan
- onHover: saat pointer bergerak
- onExit: saat widget melakukan terminate program

##  Cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter ##

Navigator akan mengimplementasi stack dalam penggunaannya. Navigator dapat menuju suatu halaman dengan menggunakan push dan mengembalikan ke halaman sebelumnya dengan pop. Halaman yang saat ini ditampilkan adalah halaman yang berada pada urutan teratas stack. Push berarti menambahkan halaman pada antrean teratas stack dan pop berarti mengurangi halaman pada antrean teratas stack. Perubahan terus terjadi pada antrean teratas stack. <br>

##  Implementasi checklist ##

1. Mengubah `main.dart`untuk menambahkan drawer dengan tiga tombol navigasi untuk menuju ke halaman counter_7 Tambah Budget dan Data Budget. <br>
2. Membuat file baru untuk halaman form, halaman penampilan data, drawer untuk menyimpan navigator 3 halaman, dan inisiasi models budget. <br>
3. Membuat elemen String untuk judul budget, int untuk nominal, tipe untuk user memilih pembelian/pemasukan pada dropdown, dan tambahan tanggal. <br>
4. Mengedit tampilan dan fungsi form pada halaman Form Budget <br>
5. Mengedit tampilan dan memunculkan data pada Data Budget <br>