# Tugas 7
### Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
Stateless Widget adalah widget yang tidak berubah selama siklus hidupnya. Widget ini bersifat statis, artinya data atau tampilan widget tidak dipengaruhi oleh interaksi pengguna atau perubahan data lainnya. Contohnya adalah Text, Icon, dan Container.

Stateful Widget adalah widget yang dapat berubah selama siklus hidupnya, biasanya karena interaksi pengguna atau data yang berubah. Stateful Widget memiliki state yang dikelola oleh State object. Contohnya adalah Checkbox, Slider, dan Form.

Perbedaan:
- Stateless Widget: Tidak memiliki state dan tidak berubah.
- Stateful Widget: Memiliki state dan dapat berubah sesuai dengan logika aplikasi atau interaksi pengguna.

### Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
Scaffold: Struktur dasar aplikasi yang menyediakan kerangka kerja seperti AppBar, body, dan drawer.
AppBar: Menampilkan bilah atas dengan judul.
Drawer: Menampilkan menu navigasi samping.

### Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
setState() digunakan untuk memberi tahu Flutter bahwa ada perubahan pada state yang perlu dirender ulang. Fungsi ini hanya memengaruhi bagian widget yang bersangkutan, sehingga performa aplikasi tetap optimal.
Variabel yang terdampak adalah semua variabel yang didefinisikan dalam kelas State dari widget dan digunakan untuk membangun tampilan.

### Jelaskan perbedaan antara const dengan final.
- const: Nilai bersifat tetap (immutable) dan harus diketahui pada waktu kompilasi.
- final: Nilai hanya dapat diinisialisasi satu kali, tetapi dapat diketahui saat runtime.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.

# Tugas 8
### Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?
Kegunaan: const digunakan untuk membuat widget atau objek yang nilainya tidak berubah (immutable) selama siklus hidup aplikasi.

Keuntungan:
Meningkatkan performa karena Flutter dapat menyimpan objek const dalam cache.
Meminimalkan penggunaan memori.

### Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
Column: Menyusun widget secara vertikal. Row: Menyusun widget secara horizontal.
Contoh:
Column(
  children: [
    Text("Vertical 1"),
    Text("Vertical 2"),
  ],
);

Row(
  children: [
    Text("Horizontal 1"),
    Text("Horizontal 2"),
  ],
);

### Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!
TextFormField: Untuk input teks seperti mood dan feelings.
ElevatedButton: Untuk mengirimkan form.
Input lain yang tidak digunakan:

DropdownButton: Untuk memilih nilai dari daftar.
Checkbox: Untuk pilihan ya/tidak.
Slider: Untuk memilih nilai dalam rentang tertentu.

### Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
Tema diatur menggunakan ThemeData dalam properti theme pada MaterialApp. Misalnya:

MaterialApp(
  theme: ThemeData(
    primaryColor: Colors.blue,
    colorScheme: ColorScheme.light(primary: Colors.blue),
  ),
);

### Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
Saya menggunakan Navigator dengan metode:

push: Untuk membuka halaman baru.
pushReplacement: Untuk mengganti halaman saat ini.

# Tugas 9
### Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?
Model membantu memetakan data JSON ke objek Dart sehingga lebih mudah digunakan. Tanpa model, pengelolaan data menjadi raw dan rentan error.

### Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini
http: Untuk melakukan permintaan HTTP seperti GET dan POST.

### Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
CookieRequest: Untuk menyimpan sesi pengguna (autentikasi). Perlu dibagikan ke seluruh komponen agar data user sinkron.

### Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
1. Data dimasukkan ke form.
2. Data dikirimkan ke server menggunakan POST (misalnya dengan CookieRequest).
3. Server memproses data dan menyimpan.
4. Aplikasi mengambil data kembali menggunakan GET dan menampilkan.
### Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
Login: Data dikirim ke endpoint Django, server memvalidasi, dan memberikan cookie sesi.
Register: Data pengguna baru dikirim ke endpoint registrasi.
Logout: Cookie sesi dihapus.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
Membuat model: Menulis kelas Dart sesuai respons JSON.
Membuat form: Menggunakan TextFormField dan validasi.
Menambahkan autentikasi: Menggunakan CookieRequest.
Menghubungkan form ke server: Dengan endpoint POST.
Menampilkan data: Menggunakan FutureBuilder.