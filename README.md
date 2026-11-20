
- **Nama:** Rizky Dzaky
- **NPM:** 2506657301
- **Kelas:** PBP C

flutter run -d chrome
```
flutter analyze
```

## Tugas 7
1. Widget tree merupakan struktur hierarki yang menggambarkan bagaimana widget-widget disusun dan saling berhubungan dalam sebuah aplikasi Flutter. Setiap widget dapat memiliki widget lain sebagai anaknya sehingga membentuk sebuah pohon yang dimulai dari root widget hingga widget-widget yang berada di dalamnya.

Hubungan parent-child menunjukkan bahwa sebuah widget induk bertanggung jawab untuk mengatur dan menyusun widget anaknya. Sebagai contoh, pada aplikasi MyPortfolio Mobile, `Scaffold` menjadi widget induk yang menyediakan struktur dasar halaman. Di dalamnya terdapat `AppBar` dan `Padding`, sedangkan `Padding` memiliki `Column` sebagai salah satu anaknya. `Column` kemudian menyusun beberapa widget seperti `Row`, `InfoCard`, dan `Center`.

Dengan widget tree, struktur antarmuka aplikasi menjadi lebih terorganisasi, modular, dan mudah dikelola.

2. Widget yang digunakan dalam proyek MyPortfolio Mobile antara lain:

- MaterialApp: Menjadi pembungkus utama aplikasi dan menyediakan konfigurasi tema serta halaman awal.
- Scaffold: Menyediakan struktur dasar halaman, seperti AppBar dan body.
- AppBar: Menampilkan bagian header aplikasi dengan judul MyPortfolio.
- Text: Menampilkan teks, seperti judul, identitas, dan nama tombol.
- Padding: Memberikan jarak antara isi widget dan batas area di sekitarnya.
- Column: Menyusun widget secara vertikal.
- Row: Menyusun widget secara horizontal.
- Card: Membuat tampilan kartu informasi dengan elevasi.
- Container: Menyediakan area untuk mengatur ukuran, padding, dan tata letak konten.
- SizedBox: Memberikan jarak dengan ukuran tertentu.
- Center: Menempatkan widget anak di tengah area yang tersedia.
- GridView.count: Menampilkan kumpulan tombol dalam bentuk grid dengan jumlah kolom yang ditentukan.
- Material: Menyediakan permukaan visual dengan warna dan bentuk tertentu untuk tombol.
- InkWell: Memberikan interaksi sentuhan atau klik pada tombol.
- Icon: Menampilkan ikon yang mewakili setiap menu aksi.
- SnackBar: Menampilkan pesan sementara ketika pengguna menekan tombol.

Selain widget bawaan Flutter tersebut, terdapat juga tiga custom class/widget yang dibuat dalam proyek:

- MyHomePage: Widget halaman utama yang menggunakan `StatelessWidget` untuk menyusun seluruh tampilan aplikasi.
- InfoCard: Widget khusus untuk menampilkan informasi NPM, nama, dan kelas dalam bentuk kartu.
- ItemCard: Widget khusus untuk menampilkan tombol aksi dengan ikon, teks, warna, dan interaksi SnackBar.

Sementara itu, `ItemHomepage` merupakan class model data yang menyimpan nama, ikon, dan warna setiap tombol.

3. `MaterialApp` merupakan widget utama yang menyediakan konfigurasi dasar untuk aplikasi Flutter dengan desain Material Design.

Widget ini umumnya digunakan sebagai root widget karena menjadi tempat konfigurasi berbagai kebutuhan aplikasi, seperti tema, navigasi, judul aplikasi, dan halaman awal yang ditampilkan.

Pada proyek MyPortfolio Mobile, `MaterialApp` digunakan di dalam `main.dart` untuk mengatur judul aplikasi, warna tema melalui `ThemeData`, dan halaman utama melalui properti `home`.

Dengan menggunakan `MaterialApp`, widget-widget di bawahnya dapat mengakses konfigurasi tema dan berbagai fasilitas yang disediakan oleh Flutter Material.


4. `StatelessWidget` merupakan widget yang tidak memiliki state internal yang dapat berubah selama widget tersebut digunakan. Tampilan widget ditentukan berdasarkan konfigurasi atau data yang diberikan ketika widget dibuat.

Sebaliknya, `StatefulWidget` merupakan widget yang memiliki state yang dapat berubah selama aplikasi berjalan. Perubahan state dapat memicu proses pembangunan ulang tampilan melalui mekanisme `setState()`.

`StatelessWidget` sebaiknya digunakan ketika tampilan hanya bergantung pada data yang diterima dan tidak membutuhkan perubahan state internal. Contohnya adalah `MyHomePage`, `InfoCard`, dan `ItemCard` pada proyek ini.

Sementara itu, `StatefulWidget` lebih tepat digunakan ketika widget perlu mengelola data yang berubah, seperti form input, penghitung, pilihan pengguna, atau status interaksi yang harus diperbarui secara dinamis.


5. `BuildContext` merupakan objek yang merepresentasikan lokasi sebuah widget dalam widget tree. Melalui `BuildContext`, sebuah widget dapat mengakses informasi dan layanan yang disediakan oleh widget-widget induknya.

`BuildContext` penting karena memungkinkan widget mengakses berbagai konfigurasi yang tersedia pada hierarki widget, seperti tema, ukuran layar, dan layanan tertentu.

Dalam proyek MyPortfolio Mobile, `BuildContext` digunakan di dalam metode `build()` untuk mengakses tema aplikasi melalui `Theme.of(context)`. Selain itu, `MediaQuery.of(context)` digunakan untuk memperoleh informasi ukuran layar sehingga lebar kartu informasi dapat disesuaikan.

`BuildContext` juga digunakan untuk menampilkan SnackBar melalui `ScaffoldMessenger.of(context)` ketika pengguna menekan salah satu tombol.



6. Hot reload merupakan fitur Flutter yang memungkinkan developer menerapkan perubahan kode ke aplikasi yang sedang berjalan tanpa harus memulai ulang aplikasi secara keseluruhan. Fitur ini mempertahankan state aplikasi sehingga proses pengembangan dan pengujian tampilan menjadi lebih cepat.

Hot restart berbeda dengan hot reload karena hot restart akan memulai ulang aplikasi dari awal dan menghilangkan state yang sedang berjalan, tetapi tidak perlu membangun ulang seluruh proses seperti full restart.

Hot reload cocok digunakan ketika melakukan perubahan pada tampilan, teks, warna, atau susunan widget yang tidak membutuhkan inisialisasi ulang aplikasi.

Hot restart diperlukan ketika perubahan kode memengaruhi proses inisialisasi atau state awal aplikasi. Sementara itu, full restart diperlukan ketika perubahan membutuhkan proses penghentian dan peluncuran ulang aplikasi secara menyeluruh, misalnya ketika terdapat perubahan konfigurasi native atau dependensi tertentu.

## AI Disclosure

Dalam pengerjaan proyek ini, saya menggunakan ChatGPT untuk membantu memahami struktur proyek Flutter, termasuk pemisahan kode `main.dart` dan `menu.dart`. Untuk membantu memecahkan sebuah masalah pada flutter

Link ChatGPT: https://chatgpt.com/share/6af45919-45b0-83ec-967b-c2cec2c8d0fc


## Tugas 8

1. Navigator.push() digunakan untuk membuka halaman baru dengan menambahkannya ke navigation stack, sehingga halaman sebelumnya tetap tersimpan dan pengguna dapat kembali menggunakan tombol Back. Navigator.pushReplacement() digunakan untuk membuka halaman baru sekaligus menggantikan halaman yang sedang aktif, sehingga halaman sebelumnya tidak lagi berada di posisi teratas navigation stack. Dan Navigator.pop() digunakan untuk menutup halaman atau dialog yang sedang aktif dan kembali ke halaman sebelumnya.

Pada aplikasi MyPortfolio Mobile, Navigator.push() digunakan untuk membuka halaman Add Project dan Add Experience ketika kartu aksi pada halaman Home ditekan. Sementara itu, opsi Home pada Drawer menggunakan Navigator.pushReplacement() untuk membawa pengguna kembali ke halaman utama. Dengan demikian, pengguna dapat berpindah halaman tanpa menumpuk halaman Home yang tidak diperlukan.

2. Scaffold berfungsi sebagai struktur dasar halaman yang menyediakan komponen seperti AppBar, Drawer, dan Body. AppBar digunakan untuk menampilkan judul halaman serta memberikan identitas visual yang konsisten. Sementara itu, Drawer menyediakan navigasi utama agar pengguna dapat berpindah antarhalaman dengan mudah.

Pada aplikasi MyPortfolio Mobile, komponen LeftDrawer digunakan kembali pada halaman Home, Add Project, dan Add Experience. Penggunaan komponen yang sama membuat navigasi lebih konsisten dan mengurangi pengulangan kode. Selain itu, warna indigo digunakan pada AppBar, DrawerHeader, dan tombol Simpan pada formulir sehingga tampilan antarhalaman memiliki identitas warna yang seragam.

3. Tata letak formulir menggunakan Form, SingleChildScrollView, Column, dan Padding. Column digunakan untuk menyusun input formulir secara vertikal agar mudah dibaca dan diisi oleh pengguna. Padding dan SizedBox digunakan untuk memberikan jarak antarwidget sehingga tampilan tidak terlalu rapat.

SingleChildScrollView digunakan agar seluruh isi formulir tetap dapat diakses dengan menggulir layar, terutama ketika ukuran layar terbatas atau keyboard sedang ditampilkan. Dengan demikian, pengguna tetap dapat menjangkau seluruh input dan tombol Simpan tanpa mengalami masalah overflow.

4. Peran GlobalKey<FormState> digunakan untuk mengidentifikasi dan mengakses state dari Form sehingga proses validasi dapat dijalankan dari tombol Simpan. validator merupakan fungsi yang memeriksa apakah nilai yang dimasukkan pengguna sudah sesuai dengan aturan yang ditentukan. Sementara itu, validate() digunakan untuk menjalankan seluruh validator pada input yang berada di dalam Form.

Pada aplikasi MyPortfolio Mobile, ketika tombol Simpan ditekan, _formKey.currentState!.validate() akan memeriksa seluruh input terlebih dahulu. Contohnya, input nama pengalaman yang hanya berisi spasi akan ditolak karena menggunakan trim().isEmpty. Jika validasi berhasil, aplikasi akan menampilkan AlertDialog yang berisi ringkasan data yang dimasukkan pengguna.

Pemilihan jenis input atau keyboard saja belum cukup untuk menjamin bahwa data yang dimasukkan benar. Sebagai contoh, keyboard numerik hanya membantu membatasi jenis karakter yang dapat dimasukkan, tetapi tidak menjamin bahwa nilai tersebut sesuai dengan aturan aplikasi. Oleh karena itu, validator tetap diperlukan untuk memastikan data memenuhi ketentuan sebelum diproses lebih lanjut.

## AI Disclosure

Dalam pengerjaan proyek ini, saya menggunakan ChatGPT sebagai alat bantu untuk memahami materi Flutter Navigation, Layouts, Forms, dan Input Elements. AI digunakan untuk membantu menjelaskan konsep Navigator, penyusunan widget, validasi formulir, penggunaan Date Picker, serta implementasi AlertDialog. Dan seluruh implementasi tetap diperiksa dan diuji secara mandiri dengan menjalankan aplikasi melalui Chrome serta menggunakan perintah flutter analyze.

Link ChatGPT : https://chatgpt.com/share/6b00458d-f2cc-83ec-8ee8-765550d13127