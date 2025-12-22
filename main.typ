// Example Tugas Akhir Document - Institut Teknologi Kalimantan
// Template demonstration with Prototipe thesis type

#import "template/tugas-akhir-itk.typ": *

#show: tugas-akhir.with(
  title: "BELUM ADA JUDUL",
  title-en: "TITLE NOT AVAILABLE YET",
  author: "Faiz Ahnaf Samudra Azis",
  nim: "11221076",
  program-studi: "Informatika",
  fakultas: "Fakultas Sains dan Teknologi Informasi",
  thesis-type: "prototipe",
  pembimbing-utama: "Riska Kurniyanto Abdullah, S.T., M.Kom.",
  pembimbing-pendamping: "Nur Fajri Azhar, S.Kom., M.Kom.",
  tahun: "2026",
)

// ============================================================================
// FRONT MATTER
// ============================================================================

// #cover-page()

// #originality-statement()

// #publication-consent()

// #approval-page()

#preface[
  Puji syukur penulis panjatkan ke hadirat Tuhan Yang Maha Esa atas berkat dan rahmat-Nya sehingga penulis dapat menyelesaikan Prototipe ini dengan judul:

  #align(center)[
    *"BELUM ADA JUDUL"*
  ]


  Prototipe ini disusun sebagai salah satu syarat untuk memperoleh gelar Sarjana Komputer pada Program Studi Informatika, Fakultas Sains dan Teknologi Data, Institut Teknologi Kalimantan.

  Dalam penyusunan Prototipe ini, penulis mendapat banyak bantuan dan dukungan dari berbagai pihak. Oleh karena itu, penulis mengucapkan terima kasih kepada:

  + Bapak Riska Kurniyanto Abdullah, S.T., M.Kom. selaku Dosen Pembimbing yang telah memberikan bimbingan dan arahan selama penyusunan Prototipe ini.
  + Kedua orang tua dan keluarga yang selalu memberikan dukungan doa dan semangat.
  + Teman-teman seperjuangan yang telah membantu dan memberikan motivasi.
  + Semua pihak yang tidak dapat disebutkan satu per satu.

  Penulis menyadari bahwa Prototipe ini masih jauh dari sempurna. Oleh karena itu, kritik dan saran yang membangun sangat penulis harapkan untuk perbaikan di masa mendatang.
]

// ============================================================================
// BAB 2 - TINJAUAN PUSTAKA
// ============================================================================

#chapter(2, "Tinjauan Pustaka")[
  == Tracer Study

  // === Definisi dan Tujuan Tracer Study
  // TODO: Definisi tracer study, tujuan pelacakan alumni
  Tracer study merupakan salah satu program yang dilakukan oleh seluruh
  perguruan tinggi di Indonesia, sebagai bentuk pengawasan alumni yang telah
  dihasilkan oleh perguruan tinggi, dalam artian setiap perguruan tinggi selalu
  mengevaluasi pelaksanaannya. Dalam proses penggunaan e-tracer study,
  pengumpulan data kuesioner seperti tentang lulusan yang telah bekerja, untuk
  mengetahui berapa lama seorang alumni bisa mendapatkan pekerjaan setelah
  lulus, dan beberapa hasil kuesioner sebagai informasi untuk digunakan sebagai
  referensi kurikulum dan peningkatan pembelajaran @akbar2020perancangan.

  // === Komponen Data Tracer Study
  // TODO: Data yang dikumpulkan (identitas, pekerjaan, waktu tunggu, dll)
  Jenis data yang dikumpulkan terdiri dari data pribadi (jenis kelamin, usia,
  dan riwayat pekerjaan), technical competency, dan behavioral competency.
  Indikator technical competency dan behavioral competency. Indikator technical
  competencies terdiri dari penguasaan pengetahuan umum, penguasaan pengetahuan
  teoritis dan praktis sesuai bidang studi, penguasaan bahasa Inggris,
  penguasaan computer, penguasaan metode penelitian, dan teknologi informasi.
  Behavioral competency meliputi integritas, kemampuan bekerjasama dalam tim,
  kemampuan komunikasi secara tertulis, kemampuan komunikasi secara lisan,
  pemberdayaan masyarakat, kepemimpinan, dan manajemen organisasi @rofaida2019strategi.

  // === Standar Tracer Study di Indonesia
  // TODO: Regulasi Dikti, BAN-PT, kebutuhan akreditasi
  Pelaksanaan tracer study di Indonesia diatur oleh beberapa standar penilaian
  yang ditetapkan oleh lembaga akreditasi. Berikut adalah identifikasi indikator
  penilaian berdasarkan BAN-PT dan Belmawa DIKTI @padang2022peningkatan.

  #tabel(
    table(
      columns: (auto, auto, 1fr),
      align: (center, left, left),
      table.header([*No*], [*Indikator Penilaian*], [*Deskripsi Penilaian*]),
      [1], [_IPK_], [Rata-rata IPK lulusan dalam 3 tahun terakhir],
      [2], [Sertifikat Kompetensi], [Jumlah lulusan yang memiliki sertifikat kompetensi],
      [3], [Lama studi], [Lama studi mahasiswa untuk setiap program studi],
      [4], [Persentase kelulusan tepat waktu], [Persentase kelulusan tepat waktu untuk setiap mahasiswa],
      [5],
      [Lama waktu tunggu],
      [Lama waktu tunggu lulusan program utama di perguruan tinggi untuk mendapatkan pekerjaan pertama],

      [6],
      [Kesesuaian Bidang Kerja Lulusan],
      [Kesesuaian bidang kerja lulusan dari program utama di perguruan tinggi terhadap kompetensi bidang studi],

      [7],
      [_Tingkat dan Ukuran Tempat Kerja Lulusan_],
      [Skala perusahaan tempat kerja lulusan meliputi skala nasional, multinasional atau internasional],
    ),
    caption: "Identifikasi Indikator Penilaian Berdasarkan BAN-PT",
  ) <tabel-indikator-banpt>

  #tabel(
    table(
      columns: (auto, 1fr, 1fr),
      align: (center, left, left),
      table.header([*No*], [*Indikator Penilaian*], [*Sub-Indikator Penilaian*]),
      [1], [Identitas Alumni], [NIM, Tahun Lulus, Nama, NIK, HP, Email],
      [2], [Status Alumni], [Bekerja, Melanjutkan pendidikan, Wirausaha, Tidak bekerja],
      [3], [Kategori tempat bekerja], [Lokal, Nasional, Internasional],
      [4], [Sumber dana dalam pembiayaan kuliah], [Beasiswa, Orang tua, Biaya sendiri],
      [5], [Keterkaitan hubungan antara bidang studi dengan pekerjaan / studi lanjut], [Sesuai, Tidak Sesuai],
      [6], [Penguasaan kompetensi oleh alumni], [Penguasaan soft skill dan kebutuhan dalam pekerjaan],
      [7],
      [Metode pencarian kerja lulusan],
      [Memperoleh informasi dari career center/Melalui iklan koran/majalah/Melamar ke bursa kerja],
    ),
    caption: "Identifikasi Indikator Penilaian Berdasarkan Belmawa DIKTI",
  ) <tabel-indikator-belmawa>

  == Sistem Informasi Berbasis Web

  // === Definisi Sistem Informasi
  // DONE: Definisi SI menurut Laudon, O'Brien, dll
  Sistem informasi merupakan serangkaian komponen berupa manusia, prosedur,
  data dan teknologi (seperti komputer) yang digunakan untuk melakukan sebuah
  proses untuk menghasilkan informasi yang bernilai untuk pengambilan keputusan
  @prasetyo2016sistem.

  // === Arsitektur Aplikasi Web Modern
  // DONE: Client-server, three-tier architecture
  Client merupakan sembarang sistem atau proses yang melakukan suatu permintaan
  data atau layanan ke server. Sedangkan server ialah, sistem atau proses yang
  menyediakan data atau layanan yang diminta oleh client. Client dapat
  mengakses server jika saling terhubung dalam suatu jaringan. Jadi arsitektur
  client-server adalah desain sebuah aplikasi terdiri dari client dan server
  yang saling berkomunikasi ketika mengakses server dalam suatu jaringan
  @maryani2018sistem.

  Arsitektur Three Tier merupakan inovasi dari arsitektur Client Server. Pada
  arsitektur Three Tier ini terdapat Application Server yang berdiri di antara
  Client dan Database Server. Contoh dari Application server adalah IIS,
  WebSphere, dan sebagainya. Application Server umumnya berupa business process
  layer, dimana bisa dikembangkan menggunakan PHP, ASP.Net, maupun Java.
  Sehingga kita menempatkan beberapa business logic pada tier tersebut.
  Arsitektur Three Tier ini banyak sekali diimplementasikan dengan menggunakan
  Web Application. Karena dengan menggunakan Web Application, Client Side
  (Komputer Client) hanya akan melakukan instalasi Web Browser. Dan saat
  komputer client melakukan inputan data, maka data tersebut dikirimkan ke
  Application Server dan diolah berdasarkan business process-nya. Selanjutnya
  Application Server akan melakukan komunikasi dengan database server
  @fauziah2015pengembangan.

  // === Pemisahan Frontend dan Backend
  // TODO: Separation of concerns, keuntungan pemisahan

  == Teknologi Pengembangan

  // === PHP dan Framework Laravel
  // TODO: Sejarah PHP, keunggulan Laravel, fitur utama
  PHP adalah bahasa pemrograman yang populer untuk pengembangan web berkat
  kemudahan penggunaannya dan fleksibilitasnya. PHP dirancang khusus untuk
  membangun halaman web dinamis dan menjadi bahasa pemrograman yang luas
  digunakan dalam pengembangan web. PHP pertama kali dirilis pada tahun
  1995 oleh Rasmus Lerdorf, dan sejak itu terus berkembang dan ditingkatkan.
  @apiag2023review.

  Laravel adalah sebuah framework web berbasis PHP yang open-source dan tidak
  berbayar, diciptakan oleh Taylor Otwell dan diperuntukkan untuk pengembangan
  aplikasi web yang menggunakan pola MVC. Struktrur pola MVC pada laravel
  sedikit berbeda pada struktur pola MVC pada umumnya. Di laravel terdapat
  routing yang menjembatani antara request dari user dan controller. Jadi
  controller tidak langsung menerima request tersebut @sari2020implementasi.

  // === Laravel Livewire
  // TODO: Reactive components, full-stack framework
  Livewire adalah kerangka kerja full-stack untuk Laravel yang membuat pembuatan
  antarmuka dinamis menjadi sederhana, tanpa meninggalkan kenyamanan Laravel.
  Livewire merender output komponen awal dengan halaman (seperti penyertaan
  Blade). Dengan cara ini, SEO-friendly. Ketika interaksi terjadi, Livewire
  membuat permintaan AJAX ke server dengan data yang diperbarui. Server
  merender ulang komponen dan merespons dengan HTML baru. Livewire kemudian
  dengan cerdas mengubah DOM sesuai dengan hal-hal yang diubah @natania2024rancang.






  // === Basis Data MySQL
  // TODO: RDBMS, fitur MySQL, penggunaan di web
  MySQL merupakan suatu jenis database server yang sangat terkenal. MySQL
  termasuk jenis RDBMS (Relational Database Manajement System). MySQL mendukung
  bahasa pemrograman SQL, bahasa permintaan yang terstruktur, karena pada
  penggunaannya SQL memiliki berberapa aturan yang telah distandarkan oleh
  asosiasi yang bernama ANSI. MySQL merupakan RDBMS (Relational Database
  Management System) server. RDBMS adalah program yang memungkinkan pengguna
  database untuk membuat, mengelola, dan menggunakan data pada suatu model
  relational. Dengan demikian, tabel-tabel yang ada pada database memiliki
  relasi antara satu tabel dengan tabel lainnya @hermiati2021pembuatan.

  == Pola Arsitektur Perangkat Lunak

  // === Model-View-Controller (MVC)
  // TODO: Definisi MVC, komponen, alur kerja
  Model View Controller ( MVC ) adalah suatu
  pola yang membagi aplikasi menjadi 3 bagian, yaitu
  Model, View dan Controller serta memisahkan antara
  bagian dan membuat tata interaksi di antaranya.
  Design Pattern bisa diartikan bahwa tiap pola yang
  menggambarkan permasalahan yang terjadi secara
  berulang, serta menjelaskan cara utama penyelesaian
  permasalahan dengan langkah tertentu yang dapat
  digunakan secara berulang. Selain itu dapat
  menggambarkan komunikasi antara Object dan Class
  dengan cara tertentu sebagai rancangan untuk
  menyelesaikan permasalahan secara umum @cipta2017perancangan.

  Definisi teknis dari arsitektur MVC dibagi
  menjadi tiga lapisan @hidayat2012penerapan

  + Model, digunakan untuk mengelola informasi dan memberitahu pengamat ketika ada perubahan informasi. Hanya model yang mengandung data dan fungsi yang berhubungan dengan pemrosesan data. Sebuah model meringkas lebih dari sekedar data dan fungsi yang beroperasi di dalamnya. Pendekatan model yang digunakan untuk komputer model atau abstraksi dari beberapa proses dunia nyata. Hal ini tidak hanya menangkap keadaan proses atau sistem, tetapi bagaimana sistem bekerja. Sebagai contoh, programmer dapat menentukan model yang menjembatani komputasi back-end dengan front-end GUI (graphical user interface).

  + View, bertanggung jawab untuk pemetaan grafis ke sebuah perangkat. View biasanya memiliki hubungan 1-1 dengan sebuah permukaan layar dan tahu bagaimana untuk membuatnya. View melekat pada model dan me-render isinya ke permukaan layar. Selain itu, ketika model berubah, view secara otomatis menggambar ulang bagian layar yang terkena perubahan untuk menunjukkan perubahan tersebut. Terdapat kemungkinan beberapa view pada model yang sama dan masing-masing view tersebut dapat me- render isi model untuk permukaan tampilan yang berbeda.
  + Controller, menerima input dari pengguna dan menginstruksikan model dan view untuk melakukan aksi berdasarkan masukan tersebut. Sehingga, controller bertanggung jawab untuk pemetaan aksi pengguna akhir terhadap respon aplikasi. Sebagai contoh, ketika pengguna mengklik tombol atau memilih item menu, controller bertanggung jawab untuk menentukan bagaimana aplikasi seharusnya merespon.
  Model, view dan controller sangat erat terkait, oleh karena itu, mereka harus merujuk satu sama lain. @gambar-mvc mengilustrasikan hubungan dasar _Model-View-Controller_.

  #gambar(
    "../resources/images/mvc-relation-graph.png",
    caption: [Hubungan antara model, view, dan controller @hidayat2012penerapan],
    width: 80%,
  ) <gambar-mvc>

  // === Repository Pattern
  // TODO: Abstraksi data access, keuntungan repository pattern
  Repository Pattern adalah pola desain yang digunakan untuk mengelola dan
  mengakses data dalam aplikasi. Dengan menggunakan Repository Pattern, aplikasi
  dapat bekerja dengan abstraksi data yang memiliki antarmuka mirip dengan
  desain koleksi. Ini memungkinkan aplikasi untuk menambah, menghapus,
  memperbarui, dan mengambil item dari koleksi secara langsung tanpa perlu
  mengelola perilaku database. Beberapa perpustakaan di institusi pendidikan
  tinggi telah mengadopsi teknologi informasi untuk memenuhi kebutuhan
  informasional, seperti menggunakan repository digital atau koleksi lokal.
  Perkembangan internet dan peran penting dari situs web telah mengarah pada
  evolusi metode penyimpanan file secara online, yang membantu dalam manajemen
  dan distribusi informasi dengan lebih efisien.
  Pola desain Repositori adalah pola untuk mengakses data yang digunakan
  dalam pengembangan perangkat lunak. Tujuan dari Repositori adalah untuk
  menyentralisasikan fungsionalitas akses data umum, sehingga mempermudah
  perawatan. Pola ini juga memisahkan infrastruktur atau teknologi yang digunakan
  untuk mengakses penyimpanan persistensi dari lapisan model domain, sehingga
  kode menjadi lebih mudah diuji, digunakan kembali, dan dipelihara.

  #gambar(
    "../resources/images/repository-pattern-graph.png",
    caption: [Desain Repository Pattern @angely2024sistem],
    width: 80%,
  ) <gambar-repository-pattern>


  Pada tahap perancangan, sistem informasi perpustakaan dikembangkan
  dengan menggunakan pola desain Repository Pattern yang diterapkan dalam tiga
  lapisan utama: Business Layer, Repository, dan Data Access Layer @angely2024sistem.
  + Business Layer mengimplementasikan logika bisnis dan berkomunikasi dengan Repository untuk mengelola objek domain dan kriteria.
  + Repository berfungsi sebagai penghubung antara Business Layer dan Data Access Layer, menyediakan antarmuka untuk operasi CRUD pada objek domain dan memfilter data berdasarkan kriteria dari Business Layer.
  + Data Access Layer (DAL) berinteraksi langsung dengan database, menangani koneksi, eksekusi query, dan transaksi. Data dari DAL dikirim ke Repository untuk diolah sebelum dikembalikan ke Business Layer. Pemisahan ini membuat sistem lebih modular, mudah diuji, dipelihara, dan dikembangkan.

  // === API-Driven Architecture
  // TODO: RESTful API, komunikasi antar service

  == Pembangunan Formulir Dinamis

  // === Konsep Dynamic Form Builder
  // TODO: Form yang dapat dikonfigurasi, schema-driven forms

  // === Sistem Kuesioner Berbasis Web
  // TODO: Online survey systems, fitur kuesioner digital

  // === Antarmuka Drag and Drop
  // TODO: UX drag-drop, implementasi di web

  == Manajemen Akses dan Multi-Tenant

  // === Role-Based Access Control (RBAC)
  // TODO: Konsep RBAC, permission management

  // === Arsitektur Multi-Tenant
  // TODO: Shared database, tenant isolation

  // === Hierarki Pengelolaan Tim Tracer dan Tim Prodi
  // TODO: Struktur organisasi, pembagian wewenang

  == Penelitian Terdahulu
  // TODO: Tabel perbandingan 3-5 penelitian terkait
  // Kolom: Penulis, Tahun, Judul, Metode, Hasil, Perbedaan dengan penelitian ini
]

// // ============================================================================
// // DAFTAR PUSTAKA
// // ============================================================================
//
#bibliography-section(bibliography(
  "references.bib",
  style: "template/harvard-cite-them-right-indonesia.csl",
  title: none,
))
