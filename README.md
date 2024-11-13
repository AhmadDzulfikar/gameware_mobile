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



