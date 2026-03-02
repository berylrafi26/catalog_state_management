### Preview

<p align="center">
  <img src="https://github.com/user-attachments/assets/43cd1e5f-efa4-41ba-bdd6-271f87fbb1f5" width="300"/>
  <img src="https://github.com/user-attachments/assets/22a877a2-82a3-41fc-ba54-221dd1fcb626" width="300"/>
</p>

### Flow Saat User Klik Tombol “tambah”

Begitu tombol ditekan, alurnya seperti ini:

1. AddButton menjalankan fungsi provider.addItem().
2. Provider meneruskan proses ke repository.addItem() untuk menyimpan perubahan data.
3. Setelah data berubah, notifyListeners() dipanggil.
4. Pemanggilan ini memberi sinyal ke UI bahwa ada perubahan state.
5. UI melakukan rebuild otomatis.
6. Item pada Cart bertambah sesuai aksi user.

Intinya: tombol → update data → beri tahu sistem → UI refresh → cart bertambah.

### Clean Architecture
```
lib/
├── main.dart # Entry point aplikasi
│
├── core/ # Utilitas & konfigurasi global
│ ├── routes/ # Routing konfigurasi
│ │ └── app_router.dart
│
├── features/ # Fitur-fitur aplikasi
│ └── cart/ # Fitur: Cart/Keranjang
│ ├── data/ # DATA LAYER
│ │ └── repositories/ # Implementasi repository
│ │ └── cart_repository_impl.dart
│ │
│ ├── domain/ # DOMAIN LAYER
│ │ ├── entities/ # Entity / objek bisnis murni
│ │ │ └── product.dart
│ │ └── repositories/ # Kontrak (abstract) repository
│ │ └── cart_repository.dart
│ │
│ └── presentation/ # PRESENTATION LAYER
│ ├── providers/ # Provider / State Notifier
│ │ └── cart_provider.dart
│ ├── pages/ # Halaman aplikasi
│ │ ├── catalog_page.dart
│ │ └── cart_page.dart
│ └── widgets/ # Widget komponen kecil
│ └── add_button_widget.dart
│
└── injection.dart # Dependency Injection setup
```
### Cara Menjalankan:

#### 1. **Clone atau Download Proyek**
```bash
git clone https://github.com/berylrafi26/catalog_state_management.git
cd catalog_state_management
```

#### 2. **Install Dependencies**
```bash
flutter pub get
```

#### 3. **Run Aplikasi**
```bash
flutter run
```
