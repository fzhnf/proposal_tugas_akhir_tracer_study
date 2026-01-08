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
// BAB 1 - PENDAHULUAN
// ============================================================================

#chapter(1, "Pendahuluan")[
  == Latar Belakang

  Perguruan tinggi memiliki kewajiban untuk menjamin mutu pendidikan yang diselenggarakan sebagai bentuk pertanggungjawaban kepada masyarakat. Salah satu indikator keberhasilan pendidikan tinggi adalah keterserapan lulusan di dunia kerja dan kesesuaian kompetensi yang dimiliki lulusan dengan kebutuhan industri. Untuk mendapatkan data tersebut, perguruan tinggi melakukan studi penelusuran alumni atau yang dikenal dengan _Tracer Study_.

  Institut Teknologi Kalimantan (ITK) telah mengimplementasikan kegiatan tracer study. Namun, sistem yang berjalan saat ini memiliki keterbatasan teknis yang signifikan. Berdasarkan observasi awal, ditemukan bahwa struktur kuesioner pada sistem saat ini bersifat statis (_hardcoded_). Kondisi ini menyebabkan tim tidak memiliki kemandirian untuk mengubah, menambah, atau menyesuaikan pertanyaan kuesioner sesuai dinamika kebutuhan data yang sering berubah. Setiap perubahan kecil memerlukan intervensi pemrograman ulang oleh pengembang, yang berdampak pada inefisiensi waktu dan keterlambatan proses pengumpulan data.

  Permasalahan kekakuan (_rigiditas_) sistem ini menghambat responsivitas institusi. Ketika Kementerian Pendidikan memperbarui standar kuesioner nasional atau program studi membutuhkan data spesifik untuk evaluasi kurikulum baru, proses adaptasi sistem memakan waktu lama dan biaya pemeliharaan yang tinggi. Selain itu, ketiadaan fitur manajemen konten kuesioner yang ramah pengguna menyebabkan ketergantungan penuh pada tenaga teknis IT.

  Untuk mengatasi permasalahan tersebut, diperlukan pengembangan ulang sistem tracer study yang mengedepankan fleksibilitas dan kemandirian pengelolaan. Pengembangan sistem informasi modern memerlukan kerangka kerja yang tangguh dan metodologi yang adaptif. Framework Laravel dipilih karena memberikan kemudahan dalam pengembangan, keamanan yang baik, serta ekosistem yang mendukung pengembangan fitur kompleks seperti manajemen kuesioner dinamis.

  Penelitian ini difokuskan pada rancang bangun sistem tracer study berbasis web di Institut Teknologi Kalimantan. Penelitian ini akan mengkaji penerapan fitur _Content Management System_ (CMS) untuk kuesioner dinamis guna menghilangkan ketergantungan pada pengembang, serta menerapkan kerangka kerja Laravel dan metodologi Agile SCRUM untuk menghasilkan sistem yang adaptif, mudah dipelihara (_maintainable_), dan sesuai dengan kebutuhan _stakeholder_.

  == Rumusan Masalah

  Berdasarkan permasalahan yang telah diuraikan pada latar belakang, maka rumusan masalah dalam penelitian ini adalah sebagai berikut:
  + Bagaimana merancang sistem tracer study berbasis web yang memiliki fitur manajemen kuesioner dinamis (_dynamic form builder_) dengan antarmuka _drag and drop_?
  + Bagaimana mengimplementasikan arsitektur sistem dengan pemisahan _concern_ antara _backend_ dan _frontend_ menggunakan dua proyek Laravel terpisah?
  + Bagaimana menerapkan _Repository Pattern_ pada sisi _backend_ untuk memastikan abstraksi akses data yang baik?
  + Bagaimana hasil pengujian sistem terhadap aspek fungsionalitas dan kegunaan?

  == Batasan Masalah

  Batasan masalah dalam penelitian tugas akhir ini adalah:
  + Penelitian ini hanya berfokus pada sistem Tracer Study Institut Teknologi Kalimantan yang nantinya akan digunakan oleh Tim Tracer dari Career Development Center ITK.
  + Penelitian ini berfokus pada fitur yang memungkinkan Tim Tracer memodifikasi kuesioner tanpa mengubah kode program.
  + Teknologi yang digunakan adalah _Framework_ Laravel dan _library_ Livewire dengan basis data MySQL.
  + Arsitektur sistem terdiri dari dua proyek Laravel terpisah (_backend_ dan _frontend_) di mana _frontend_ tidak memiliki akses langsung ke basis data.
  + Pengembangan _backend_ menerapkan _Repository Pattern_.
  + Metode pengembangan perangkat lunak menggunakan Agile SCRUM.

  == Tujuan

  Sejalan dengan rumusan masalah yang telah disusun, penelitian ini memiliki tujuan sebagai berikut:
  + Merancang sistem tracer study berbasis web yang dilengkapi dengan fitur manajemen kuesioner dinamis berbasis CMS untuk mengatasi kekakuan sistem yang ada saat ini.
  + Mengimplementasikan _framework_ Laravel dan Livewire dengan arsitektur terpisah (_frontend_ & _backend_) serta _Repository Pattern_ untuk menghasilkan sistem yang terstruktur dan mudah dipelihara.
  + Menerapkan metode Agile SCRUM dalam proses pengembangan sistem secara iteratif untuk memastikan kesesuaian dengan kebutuhan Tim Career Center ITK.
  + Menguji dan mengevaluasi sistem tracer study yang telah dikembangkan terhadap aspek fungsionalitas.

  == Manfaat

  Penelitian ini diharapkan dapat memberikan manfaat bagi berbagai pihak, antara lain:
  + *Bagi Institusi*: Sistem yang dikembangkan memberikan kemandirian bagi tim Career Center dalam mengelola dan memperbarui konten kuesioner secara dinamis tanpa ketergantungan pada pengembang, serta meningkatkan responsivitas terhadap perubahan standar nasional.
  + *Bagi Pengguna*: Sistem menyediakan antarmuka yang lebih ramah pengguna untuk pengisian kuesioner yang dapat diakses kapan saja dan di mana saja.
  + *Bagi Ilmu Pengetahuan*: Menjadi referensi bagi penelitian selanjutnya di bidang rekayasa perangkat lunak, khususnya terkait penerapan metode Agile SCRUM dan arsitektur modern dalam pengembangan sistem tracer study.

  == Potensi Dampak Fungsional/Komersial

  Potensi dampak dari pengembangan sistem ini adalah:
  + Memberikan Sistem Tracer Study terpusat untuk mengelola kuesioner tracer study secara lebih terstruktur dan efisien.
  + Mengurangi biaya pemeliharaan yang dikeluarkan setiap ada perubahan pada kuesioner.

  == Sistematika Penulisan

  Sistematika penulisan laporan tugas akhir ini disusun sebagai berikut:

  *BAB 1 PENDAHULUAN* \
  Bab ini membahas latar belakang masalah, rumusan masalah, batasan masalah, tujuan penelitian, manfaat penelitian, potensi dampak, dan sistematika penulisan.

  *BAB 2 TINJAUAN PUSTAKA* \
  Bab ini memuat teori-teori penunjang yang digunakan sebagai landasan dalam penelitian, meliputi teori tentang _Tracer Study_, konsep pengembangan sistem web, teknologi Laravel dan Livewire, serta pola arsitektur yang digunakan.

  *BAB 3 METODOLOGI PENELITIAN* \
  Bab ini menjelaskan tahapan-tahapan yang dilakukan dalam penelitian menggunakan metode Agile SCRUM, mulai dari inisialisasi, _sprint planning_, _execution_, _review_, hingga _retrospective_.

  *BAB 4 HASIL DAN PEMBAHASAN* \
  Bab ini berisi hasil implementasi sistem yang telah dibangun serta pembahasan mengenai pengujian fungsionalitas dan performa sistem.

  *BAB 5 PENUTUP* \
  Bab ini berisi kesimpulan dari seluruh rangkaian penelitian dan saran untuk pengembangan sistem selanjutnya.
]


// ============================================================================
// BAB 2 - TINJAUAN PUSTAKA
// ============================================================================

#chapter(2, "Tinjauan Pustaka")[
  == Tracer Study

  // === Definisi dan Tujuan Tracer Study
  _Tracer Study_ atau studi penelusuran alumni adalah survei yang terstandarisasi terhadap lulusan institusi pendidikan tinggi yang diselenggarakan beberapa waktu setelah kelulusan. Menurut Direktorat Jenderal Pendidikan Tinggi (Dikti), _tracer study_ bertujuan untuk mengetahui _outcome_ pendidikan dalam bentuk transisi dari dunia pendidikan tinggi ke dunia kerja, situasi kerja terkhir, dan keselarasan serta aplikasi kompetensi di dunia kerja @dikti2021.

  Bagi perguruan tinggi, _tracer study_ merupakan alat evaluasi kinerja institusi dan indikator penting dalam akreditasi, baik oleh BAN-PT maupun lembaga akreditasi internasional. Data yang diperoleh digunakan untuk penyempurnaan kurikulum dan perbaikan sistem pembelajaran agar kompetensi lulusan ( _hard skill_ dan _soft skill_ ) relevan dengan kebutuhan industri.

  // === Komponen Data Tracer Study
  Data yang dikumpulkan dalam _tracer study_ umumnya mencakup:
  + *Identitas Alumni*: Nama, NIM, Tahun Lulus, Kontak.
  + *Status Pekerjaan*: Bekerja, Wirausaha, atau Melanjutkan Studi.
  + *Waktu Tunggu*: Durasi waktu dari lulus hingga mendapatkan pekerjaan pertama.
  + *Kesesuaian Bidang*: Relevansi antara bidang studi dengan pekerjaan saat ini.
  + *Kompetensi*: Penilaian diri alumni terhadap kompetensi yang diperoleh semasa kuliah dibandingkan dengan tuntutan pekerjaan.

  == Sistem Informasi Berbasis Web

  // === Definisi Sistem Informasi
  Sistem informasi didefinisikan oleh Laudon & Laudon sebagai sekumpulan komponen yang saling berhubungan yang mengumpulkan (atau mengambil), memproses, menyimpan, dan mendistribusikan informasi untuk mendukung pengambilan keputusan dan pengawasan dalam sebuah organisasi @laudon2021.

  Sementara itu, O'Brien & Marakas mendefinisikan sistem informasi sebagai kombinasi teratur dari orang-orang, perangkat keras (_hardware_), perangkat lunak (_software_), jaringan komunikasi, sumber daya data, dan kebijakan serta prosedur yang menyimpan, mengambil, mengubah, dan menyebarkan informasi dalam sebuah organisasi @obrien2011.

  Aplikasi berbasis web adalah aplikasi yang diakses menggunakan penjelajah web melalui suatu jaringan seperti internet atau intranet. Keunggulan utama aplikasi berbasis web adalah aksesibilitas yang tinggi karena tidak memerlukan instalasi perangkat lunak khusus pada sisi klien (_client-side_).

  == Teknologi Pengembangan

  // === PHP dan Framework Laravel
  Laravel adalah kerangka kerja (_framework_) aplikasi web berbasis PHP yang menggunakan konsep _Model-View-Controller_ (MVC). Laravel dirancang untuk membuat pengembangan aplikasi web menjadi lebih mudah dan cepat dengan menyediakan fitur-fitur bawaan seperti otentikasi, _routing_, sesi, dan _caching_ @laravel. Keunggulan Laravel meliputi sintaks yang ekspresif, keamanan yang baik terhadap serangan umum seperti _SQL Injection_ dan _Cross-Site Request Forgery_ (CSRF), serta ekosistem yang luas.

  // === Laravel Livewire
  Livewire adalah _library_ _full-stack_ untuk Laravel yang memungkinkan pembangunan antarmuka dinamis tanpa meninggalkan kenyamanan PHP. Livewire bekerja dengan me-render komponen di server (Blade template) dan mengirimkan HTML ke browser. Ketika terjadi interaksi pengguna (seperti klik tombol), Livewire mengirimkan permintaan AJAX ke server, memproses logika, dan memperbarui DOM secara cerdas tanpa memuat ulang seluruh halaman @livewire. Ini memungkinkan pembuatan aplikasi yang responsif seperti _Single Page Application_ (SPA) namun dengan kesederhanaan arsitektur _server-side_.

  // === Basis Data MySQL
  MySQL adalah sistem manajemen basis data relasional (RDBMS) sumber terbuka yang populer digunakan dalam pengembangan aplikasi web. MySQL menggunakan _Structured Query Language_ (SQL) untuk mengakses dan memanipulasi data. Keunggulan MySQL meliputi kinerja tinggi, keandalan, dan kemudahan penggunaan, serta dukungan komunitas yang besar.

  == Pola Arsitektur Perangkat Lunak

  // === Model-View-Controller (MVC)
  Arsitektur MVC memisahkan aplikasi menjadi tiga komponen logika utama:
  + *Model*: Bertanggung jawab atas pengelolaan data dan logika bisnis. Model berinteraksi langsung dengan basis data.
  + *View*: Menangani tampilan antarmuka pengguna (_User Interface_). Menampilkan data dari model kepada pengguna.
  + *Controller*: Bertindak sebagai penghubung antara Model dan View. Menerima input dari pengguna, memprosesnya melalui Model, dan memperbarui View.

  // === Repository Pattern
  _Repository Pattern_ adalah pola desain yang bertindak sebagai perantara antara lapisan logika bisnis dan lapisan akses data. Tujuan utama pola ini adalah untuk memisahkan logika pengambilan data (query) dari logika bisnis aplikasi.

  Manfaat penggunaan _Repository Pattern_ meliputi @fowler2002:
  + *Abstraksi*: Logika bisnis tidak perlu mengetahui detail implementasi akses data (apakah data berasal dari MySQL, API, atau file).
  + *Testability*: Memudahkan pengujian unit (_unit testing_) karena lapisan data dapat dengan mudah di-_mock_.
  + *Maintainability*: Perubahan pada struktur basis data atau logika query hanya perlu dilakukan di satu tempat (Repository), tanpa mengubah Controller.

  == Pembangunan Formulir Dinamis

  // === Konsep Dynamic Form Builder
  _Dynamic Form Builder_ adalah fitur yang memungkinkan pengguna akhir (non-programmer) untuk membuat dan memodifikasi struktur formulir secara visual. Dalam sistem konvensional, penambahan pertanyaan kuesioner memerlukan perubahan kode program dan struktur basis data. Dengan pendekatan dinamis, struktur pertanyaan disimpan sebagai metadata (biasanya dalam format JSON) di dalam basis data.

  Sistem kemudian membaca metadata tersebut dan me-render formulir secara otomatis. Hal ini memberikan fleksibilitas tinggi bagi organisasi yang memiliki kebutuhan data yang sering berubah, seperti dalam kasus penyesuaian kuesioner _tracer study_ untuk setiap program studi.

  == Manajemen Akses

  // === Role-Based Access Control (RBAC)
  _Role-Based Access Control_ (RBAC) adalah metode pengaturan akses komputer berdasarkan peran pengguna dalam suatu organisasi. Dalam RBAC, hak akses tidak diberikan langsung kepada pengguna, melainkan kepada "peran" (_role_). Pengguna kemudian dikelompokkan ke dalam peran-peran tersebut.

  Contoh penerapan dalam sistem ini:
  + *Role Admin/Tim Tracer*: Memiliki akses penuh untuk membuat kuesioner global dan melihat seluruh laporan.
  + *Role Tim Prodi*: Hanya memiliki akses untuk menambahkan pertanyaan spesifik prodi dan melihat laporan prodi mereka sendiri.
  + *Role Alumni*: Hanya memiliki akses untuk mengisi kuesioner.

  == Penelitian Terdahulu

  Berikut adalah perbandingan beberapa penelitian terdahulu yang relevan dengan pengembangan sistem informasi _tracer study_:

  #figure(
    table(
      columns: (auto, 1fr, 1fr, 1fr),
      align: (center, left, left, left),
      table.header([*No*], [*Peneliti & Judul*], [*Metode & Teknologi*], [*Perbedaan dengan Penelitian Ini*]),

      [1],
      [Mohidin & Asep (2023) \ "Rancang Bangun Tracer Study UNUSIA... RAD" @mohidin2023],
      [RAD, Laravel, MySQL],
      [Menggunakan metode Rapid Application Development (RAD). Kuesioner bersifat statis dan tidak mengakomodasi variasi pertanyaan antar prodi.],

      [2],
      [Fajrian, dkk. (2024) \ "Rancang Bangun Sistem Tracer Study... Unified Process" @fajrian2024],
      [Unified Process, Laravel],
      [Menggantikan form manual namun masih menggunakan struktur *hardcoded*. Fokus penelitian pada siklus Unified Process, bukan fleksibilitas instrumen.],

      [3],
      [Putri & Pakereng (2021) \ "Pengembangan Sistem Informasi Tracer Study... UCD" @putri2021],
      [User Centered Design (UCD)],
      [Fokus pada pengalaman pengguna (UX/UI). Belum menerapkan arsitektur *Separation of Concern* yang memisahkan Frontend dan Backend secara API-driven.],

      [4],
      [Shelly Andari, dkk. (2021) \ "Analisis Kesesuaian Bidang Kerja Lulusan..." @shelly2021],
      [Data Mining (C4.5)],
      [Fokus pada analisis data hasil _tracer study_, bukan pada pengembangan sistem pengumpulan data yang fleksibel dan dinamis.],
    ),
    caption: "Tabel Perbandingan Penelitian Terdahulu",
  ) <tabel-penelitian-terdahulu>

  Penelitian ini mengisi celah (_gap_) dengan mengembangkan sistem yang tidak hanya fokus pada pelacakan, tetapi juga memberikan solusi fleksibilitas melalui fitur *Dynamic Form Builder* dan menerapkan arsitektur *Separation of Concern* (Frontend-Backend terpisah) serta *Repository Pattern* untuk skalabilitas dan kemudahan pemeliharaan.
]

// ============================================================================
// BAB 3 - DESAIN DAN IMPLEMENTASI
// ============================================================================

#chapter(3, "Desain dan Implementasi")[
  == Konsep Desain
  Konsep desain Sistem Informasi Tracer Study ini dirancang untuk mengatasi permasalahan rigiditas data yang dialami pada sistem sebelumnya. Sistem dirancang menggunakan pendekatan _User Centered Design_ (UCD) untuk memastikan antarmuka yang dihasilkan ramah pengguna dan sesuai dengan kebutuhan Tim Career Center serta Alumni.

  == Spesifikasi Teknis
  Spesifikasi teknis mencakup kebutuhan perangkat keras dan perangkat lunak yang digunakan untuk menunjang pengembangan dan implementasi sistem prototipe ini.

  === Perangkat Keras (_Hardware_)
  // TODO: Spesifikasi Laptop yang digunakan (Processor, RAM, SSD)
  Spesifikasi perangkat keras yang digunakan dalam pengembangan sistem ini adalah:
  - Processor: [TODO: Sebutkan Tipe Processor]
  - Memory (RAM): [TODO: Sebutkan Kapasitas RAM]
  - Storage: [TODO: Sebutkan Tipe Storage]

  === Perangkat Lunak (_Software_)
  Perangkat lunak yang digunakan meliputi:
  - *Sistem Operasi*: [TODO: Sebutkan OS, misal Windows 11 / Linux]
  - *Bahasa Pemrograman*: PHP (Laravel Framework), JavaScript (Livewire).
  - *Database*: MySQL.
  - *Editor Kode*: Visual Studio Code.
  - *Desain UI/UX*: Figma.
  - *Version Control*: Git.

  == Tahapan Pembuatan Prototipe
  Prosedur penelitian ini mengikuti metode *Agile* dengan kerangka kerja *Scrum*. Tahapan-tahapan yang dilakukan adalah sebagai berikut:

  #figure(
    image("flowchart_agile.png"),
    caption: "Diagram Alir Penelitian (Agile SCRUM)",
  ) <gambar-alur-penelitian>

  === Inisialisasi dan Product Backlog
  Tahap awal dimulai dengan merumuskan _Product Backlog_, yaitu daftar prioritas kebutuhan sistem yang diterjemahkan dari _User Requirements_. Kebutuhan disusun dalam bentuk _User Stories_ untuk menangkap perspektif pengguna secara langsung. _Product Backlog_ mencakup kebutuhan fungsional (seperti generator kuesioner dinamis) dan non-fungsional.

  === Perencanaan Sprint (_Sprint Planning_)
  Sebelum memulai siklus pengembangan, dilakukan _Sprint Planning_ untuk memilih item dari _Product Backlog_ yang akan dikerjakan dalam durasi satu _Sprint_. Tim menetapkan _Sprint Goal_ dan memecah _User Stories_ menjadi tugas teknis, dengan target luaran berstatus "Done" sesuai kriteria _Definition of Done_ (DoD).

  === Pelaksanaan Sprint (_Sprint Execution_)
  Tahap ini merupakan inti dari pengembangan yang meliputi:
  + *Perancangan Antarmuka (_Design_)*: Menggunakan pendekatan _User Centered Design_ (UCD), antarmuka dirancang menggunakan *Figma* secara inkremental sesuai kebutuhan sprint, namun tetap menjaga konsistensi visual.
  + *Implementasi Kode (_Build_)*: Desain yang valid diimplementasikan ke dalam kode program (Frontend dan Backend) menggunakan Laravel dan Livewire. Penyesuaian teknis dilakukan segera dalam sprint jika ditemukan kendala.

  === Sprint Review dan Validasi
  Di akhir setiap _Sprint_, dilakukan validasi bertahap menggunakan _User Acceptance Test_ (UAT) parsial. Hasilnya adalah daftar fitur yang dinyatakan diterima (_Accepted_) atau revisi yang akan dimasukkan kembali ke _Backlog_ untuk dikerjakan di sprint berikutnya.

  === Sprint Retrospective
  Evaluasi proses kerja dilakukan untuk mengidentifikasi perbaikan dari sisi metode kerja atau efisiensi waktu guna meningkatkan kualitas pada _Sprint_ selanjutnya.

  == Rencana Jadwal Pembuatan Prototipe
  // TODO: Masukkan Tabel Gantt Chart atau Deskripsi Jadwal
  Penelitian ini direncanakan akan dilaksanakan dalam kurun waktu [TODO: Sebutkan Durasi] dengan rincian jadwal sebagai berikut:

  #figure(
    table(
      columns: (auto, 1fr, 1fr, 1fr, 1fr),
      align: (center, left, center, center, center),
      table.header([*No*], [*Kegiatan*], [*Bulan 1*], [*Bulan 2*], [*Bulan 3*]),
      [1], [Studi Literatur], [X], [], [],
      [2], [Pengumpulan Data], [X], [X], [],
      [3], [Pengembangan (Sprints)], [], [X], [X],
      [4], [Pengujian & Evaluasi], [], [], [X],
      [5], [Penyusunan Laporan], [], [X], [X],
    ),
    caption: "Rencana Jadwal Penelitian",
  ) <tabel-jadwal>
]

// ============================================================================
// // DAFTAR PUSTAKA
// // ============================================================================
//
#bibliography-section(bibliography(
  "references.bib",
  style: "template/harvard-cite-them-right-indonesia.csl",
  title: none,
))
