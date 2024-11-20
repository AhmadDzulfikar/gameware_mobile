# Gameware

# Tugas 7: Elemen Dasar Flutter
## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
### Stateless widget
Stateless Widget adalah widget yang tidak memiliki keadaan internal yang berubah selama siklus hidupnya. Dengan kata lain, widget ini bersifat statis dan hanya bergantung pada parameter yang diterimanya saat dibuat.
### Stateful widget
Stateful Widget adalah widget yang dapat berubah selama siklus hidupnya. Widget ini memiliki keadaan (state) internal yang dapat diperbarui, sehingga UI dapat merespons perubahan data atau interaksi pengguna.
### Perbedaan:
![image](https://github.com/user-attachments/assets/c469b9c9-dd70-4b98-9c81-0d11a491e96b)

##  Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
Saya menggunakan beberapa widget dalam proyek ini, seperti:
- Row: Untuk menyusun widget secara horizontal yang saya implementasikan pada NPM, Nama, dan kelas.
- Column: Untuk menyusun widget secara vertikal.
- Text: Untuk menampilkan teks secara statis di aplikasi.
- Gridview: untuk menampilkan item dalam format grid atau table.
- ElevatedButton: Tombol untuk menampilkan aksi dan interaksi pengguna, seperti navigasi antar halaman.
- Expanded: Memperluas widget agar mengisi ruang yang tersedia di dalam row atau column dan memastikan elemen dalam ukuran yang proporsional.

##  Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
`setState()` digunakan untuk memperbarui status internal dari sebuah widget Stateful. Ketika kita ingin mengubah nilai variabel yang mempengaruhi tampilan UI, dan kita membungkus perubahan tersebut di dalam panggilan `setState()`.
### Variabel yang terdampak dari setState():
a. Dalam penggunaan NPM, Name, className memungkinkan pembaruan data akan ditampilkan secara langsung di UI ketika ada perubahan dibuat.
b. Ketika daftar `ItemHomepage` diubah seperti menambah atau menghapus data, kita dapat menggunakan setState() agar tampilan `GridView` diperbarui dengan data terbaru.

## Jelaskan perbedaan antara const dengan final.
`const` digunakan untuk mendefinisikan variabel yang bersifat konstanta dan harus diinisialisasi pada waktu kompilasi, dan variabel const ini bersifat immutable. Sedangkan `final` digunakan untuk mendefinisikan variabel yang hanya dapat diinisialisasi sekali dan tidak dapat diubah setelahnya.

![image](https://github.com/user-attachments/assets/d120db62-7511-43c9-bc05-57a0529df8f2)

##  Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.
###  Membuat sebuah program Flutter baru dengan tema E-Commerce yang sesuai dengan tugas-tugas sebelumnya.
1. Buka cmd
2. `flutter create GameWare
cd GameWare`.
### Membuat tiga tombol sederhana dengan ikon dan teks untuk: Melihat daftar produk (Lihat Daftar Produk), Menambah produk (Tambah Produk), Logout (Logout)
1. Membuat widget `ItemHomepage`:
```
final List<ItemHomepage> items = [
  ItemHomepage(
    "Lihat Daftar Produk",
    Icons.assignment_turned_in,
    Colors.blue,
  ),
  ItemHomepage(
    "Tambah Produk",
    Icons.add,
    Colors.green,
  ),
  ItemHomepage(
    "Logout",
    Icons.logout,
    Colors.red,
  ),
];
```
2. Membangun UI dengan GridView dan ItemCard
```
GridView.count(
  primary: true,
  padding: const EdgeInsets.all(20),
  crossAxisSpacing: 10,
  mainAxisSpacing: 10,
  crossAxisCount: 3,
  shrinkWrap: true,
  children: items.map((ItemHomepage item) {
    return ItemCard(item);
  }).toList(),
),
```
###  Mengimplementasikan warna-warna yang berbeda untuk setiap tombol (Lihat Daftar Produk, Tambah Produk, dan Logout).
```
final List<ItemHomepage> items = [
  ItemHomepage(
    "Lihat Daftar Produk",
    Icons.assignment_turned_in,
    Colors.blue, // Warna untuk tombol ini
  ),
  ItemHomepage(
    "Tambah Produk",
    Icons.add,
    Colors.green, // Warna untuk tombol ini
  ),
  ItemHomepage(
    "Logout",
    Icons.logout,
    Colors.red, // Warna untuk tombol ini
  ),
];
```
###  Memunculkan Snackbar dengan tulisan:
```
onTap: () {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(SnackBar(
        content: Text("Kamu telah menekan tombol ${item.name}!")));
},
```
# Tugas 8
## Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?
`const` digunakan untuk mendefinisikan objek yang bersifat immutable atau tidak dapat diubah. Ketika sebuah widget atau objek ditandai dengan const, itu berarti bahwa nilai dari objek tersebut tidak akan berubah selama runtime aplikasi.

## Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
`Column`
Column adalah widget yang menyusun anak-anaknya secara vertikal (dari atas ke bawah). 
Contoh:
```
child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text(
      item.count.toString(),
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
    Icon(
      item.icon,
      color: Colors.white,
      size: 30.0,
    ),
    const SizedBox(height: 8.0),
    Text(
      item.name,
      textAlign: TextAlign.center,
      style: const TextStyle(color: Colors.white),
    ),
  ],
  ),
```

`Row`
Row adalah widget yang menyusun anak-anaknya secara horizontal (dari kiri ke kanan). 
Contoh:
```
    Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(child: InfoCard(title: 'NPM', content: npm)),
          Expanded(child: InfoCard(title: 'Name', content: name)),
          Expanded(child: InfoCard(title: 'Class', content: className)),
        ],
      ),
    ),
```

##  Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!
Dalam mengerjakan tugas ini, karna saya mengikuti tutorial jadinya saya menggunakan elemen input `TextField`, dan saya tidak menggunakan beberapa input yang lain seperti `Checkbox`, `Radio`, `Switch`, `DropdownButton`.

##  Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
Cara saya untuk mengatur tema dalam projek flutter yang sedang saya buat adalah dengan cara pada widget `MaterialApp` saya mengatur `ThemeData. Dengan cara ini kita dapat mengatur semua desainnya seperti font, warna.

##  Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
Dalam melakukan navigasi saya menggunakan `Navigator` untuk melakukannya yang mana `Navigator.push()` untuk pindah halaman dan `Navigator.pop()` untuk kembali ke halaman sebelumnya.

### Untuk Pindah ke Halaman Baru:
```
  onTap: () {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const MyHomePage(),
        ));
  },
```

### Untuk kembali ke halaman sebelumnya:
```
   actions: [
      TextButton(
        child: const Text('OK'),
        onPressed: () {
          Navigator.pop(context);
          _formKey.currentState!.reset();
        },
      ),
    ],
```

# Tugas 9
## 1. Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?
Dalam pembuatan project ini kita perlu membuat `model` dengan berbagai alasan, seperti:
1. Konsistensi Struktur Data
   Dalam flutter dan django, data JSON yang dikirim atau diterima harus memiliki struktur yang sesuai agar tidak menimbulkan error parsing.
2. Validasi Data
   Model di kedua sisi membantu memvalidasi data. Misalnya:
   - Django menggunakan serializers dari Django REST Framework (DRF) untuk memeriksa apakah data yang dikirim oleh Flutter memenuhi persyaratan model.
   - Flutter menggunakan model Dart untuk memvalidasi tipe data yang diterima dari API.
Jika kita tidak membuat model dapat berisiko error parsing JSON, struktur data salah, dan tidak kesesuaian tipe data akan meningkat.

## 2. Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini
Beberapa fungsi library http yang saya implementasikan:
- Melakukan HTTP Request: Mengirim request (GET, POST, PUT, DELETE) ke server.
- Mengambil Data dari API: Mendapatkan respons dalam bentuk JSON.

## 3. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
`CookieRequest` berfungsi untuk menyimpan informasi autentikasi yang memastikan bahwa semua permintaan berikutnya terkait dengan sesi user yang sama. Dan kenapa kita perlu instance `CookieRequest` ke semua komponen di aplikasi flutter adalah karna dapat memastikan konsistensi sesi, mempermudah pengembangan, menghindari redudansi, dan mendukung pengelolaan depedency yang baik.

## 4.  Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
a. Input Data di Flutter
Pengguna memasukkan data melalui interface Flutter, misalnya melalui form atau widget input seperti TextField, DropdownButton, atau lainnya.
b. Pengiriman Data ke Backend
Setelah data dikumpulkan dan divalidasi, Flutter mengirimkan data ke backend melalui request
c. Pemrosesan di Backend
Backend (misalnya Django) menerima request dari Flutter dan memproses data.
d. Penerimaan dan Pemrosesan Data di Flutter
Setelah backend mengirimkan respons, Flutter menerima dan memprosesnya untuk ditampilkan kepada pengguna.
e. Menampilkan Data di Flutter
Data yang diterima dari backend kemudian ditampilkan ke pengguna melalui interface Flutter.

## 5. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
### Proses Register
#### Flutter:
a. Input Data Pengguna: Pengguna memasukkan data seperti usernama dan password menggunakan widget input (TextField).
b. Validasi Data: Validasi dilakukan untuk memastikan data yang dimasukkan benar, seperti format username valid dan password memenuhi kriteria.
c. Kirim Data ke Django: Data dikirim ke backend menggunakan HTTP POST request dalam format JSON.
#### Django:
a. Penerimaan Data: Django menerima data JSON yang dikirim oleh Flutter dan memprosesnya melalui endpoint register.
b. Validasi dan Simpan:
    - Django memvalidasi data, seperti mengecek apakah email sudah terdaftar.
    - Jika valid, data disimpan ke database menggunakan model User.
c. Kirim Respons: Django mengirimkan respons JSON kembali ke Flutter untuk memberi tahu status pendaftaran.

### Proses Login
#### Flutter:
a. Input Data Login: Pengguna memasukkan username dan password.
b. Kirim Data ke Django: Data login dikirim ke backend.
#### Django:
a. Penerimaan Data: Django menerima data JSON melalui endpoint login.
b. Validasi dan Sesi:
    - Backend memvalidasi kredensial menggunakan authenticate.
    - Jika berhasil, sesi pengguna disimpan menggunakan login.
c. Kirim Respons: Django mengirimkan data seperti token atau session ID untuk dipakai di Flutter.

### Proses Logout
#### Flutter:
Kirim Permintaan Logout: Flutter mengirimkan request logout ke backend, menyertakan token jika diperlukan.

#### Django:
a. Penerimaan Permintaan Logout: Django menerima permintaan dan menghapus sesi/token.
b. Hapus Token: Jika menggunakan token-based authentication, token dihapus dari database.
c. Kirim Respons: Django mengirimkan konfirmasi logout ke Flutter.

##  Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
### 1.  Mengimplementasikan fitur registrasi akun pada proyek tugas Flutter.
a. Buatlah logic button registrasi:
```
 final response = await request.postJson(
  "http://localhost:8000/auth/register/",
  jsonEncode({
    "username": username,
    "password1": password1,
    "password2": password2,
  }));
```
b. Dan jika registrasi berhasil maka arahkan ke login page:
```
   ...
     Navigator.pushReplacement(
    context,
    MaterialPageRoute(
        builder: (context) => const LoginPage()),
  );
   ...
```

### 2.  Mengimplementasikan fitur login akun pada proyek tugas Flutter.
a. Membuat view untuk login page di Django `authentication/views.py`:
```
   @csrf_exempt
   def login(request):
       username = request.POST['username']
       password = request.POST['password']
       user = authenticate(username=username, password=password)
```
lalu sambungkan urls-nya di `urls.py
b. Buatlah tampilan halaman login pada aplikasi flutter dan pada `main.dart` ubah `home: MyHomePage()` menjadi `home: const LoginPage()`

### 3.  Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter.
a. Membuat view untuk fitur login, logout, dan registrasi
b. Memanggil endpoints melalui request di Flutter
c. Memproses output dari JSON

### 4.  Membuat model kustom sesuai dengan proyek aplikasi Django.
a. Mengecek isi dari localhost:8000/json
2. Generate model dart dengan bantuan website Quicktype
3. Membuat file baru bernama product_entry.dart untuk meletakan model yang telah kita generate sebelumnya.

### 5.  Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu deploy.
a. Menggunakan Future Builder di Scaffold:
```
...
 body: FutureBuilder(
     future: fetchMood(request),
     builder: (context, AsyncSnapshot snapshot) {
       if (snapshot.data == null) {
         return const Center(child: CircularProgressIndicator());
       } else {
         if (!snapshot.hasData) {
...
```
b. Membuat function untuk melakukan fetching JSON:
```
     Future<List<ProductEntry>> fetchMood(CookieRequest request) async {
    final response = await request.get('http://localhost:8000/json/');

    // Melakukan decode response menjadi bentuk json
    var data = response;

    // Melakukan konversi data json menjadi object ProductEntry
    List<ProductEntry> listMood = [];
    for (var d in data) {
      if (d != null) {
        listMood.add(ProductEntry.fromJson(d));
      }
    }
    return listMood;
  }
```
### 6.  Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item.
a. Membuat variabel yang akan menjadi atribut dari page yang sedang dibuat:
```
  final String uuid;
  final String name;
  final int price;
  final String description;

  ProductDetailPage(
      {required this.uuid,
      required this.name,
      required this.price,
      required this.description,
```
b. Handle card product yang di klik di halaman list product:
```
   ...
   child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProductDetailPage(
                uuid: snapshot.data![index].pk.toString(),
                name: snapshot.data![index].fields.name,
                price: snapshot.data![index].fields.price,
                description:
              ),
            ),
          );
        },
   ...
```
c. Menggunakan atribut untuk ditampilkan di halaman dengan jelas:
```
         Text(
           'Name: ${widget.name}',
           style: TextStyle(fontSize: 16),
         ),
         Text(
           'Price: \$${widget.price}',
           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
         ),
         SizedBox(height: 8.0),
         Text(
           'Description: ${widget.description}',
           style: TextStyle(fontSize: 16),
         ),
         )
```




