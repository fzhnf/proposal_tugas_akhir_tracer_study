// LEARNING & STUDY APPROACH:
// 1. UNDERSTAND THE DOMAIN: Study BAN-PT LKPS format, Kemendikti reporting requirements
// 2. MASTER DATA EXPORT: Learn Excel generation (PhpSpreadsheet), PDF generation
// 3. STUDY DATA VISUALIZATION: Chart.js, Livewire Charts, Dashboard UX patterns
// 4. BENCHMARKING: Look at reporting systems (Metabase, Google Data Studio)
// 5. DATA TRANSFORMATION: Learn ETL patterns, data mapping strategies
// =============================================================================



#import "template/tugas-akhir-itk.typ": *


#show: tugas-akhir.with(
  title: "Rancang Bangun Sistem Frontend Tracer Study ITK dengan Model Waterfall Iterative Menggunakan Metode User Centered Design",
  title-en: "Design and Development of ITK Tracer Study Frontend System with Waterfall Iterative Model Using User Centered Design Method",
  author: "Faiz Ahnaf Samudra Azis",
  nim: "11221076",
  program-studi: "Informatika",
  jurusan: "Teknik Elektro, Informatika, dan Bisnis",
  fakultas: "Fakultas Sains dan Teknologi Informasi",
  thesis-type: "prototipe",
  pembimbing-utama: "Riska Kurniyanto Abdullah, S.T., M.Kom.",
  nip-pembimbing-utama: 198803082020121011,
  pembimbing-pendamping: "Nur Fajri Azhar, S.Kom., M.Kom.",
  nip-pembimbing-pendamping: 199205182019031015,
  penguji-1: ".....................................",
  penguji-2: ".....................................",
  tahun: "2026",
)

// ============================================================================
// FRONT MATTER
// ============================================================================

// #cover-page()
HALAMAN SAMPUL

#originality-statement()

#publication-consent()

#approval-proposal-page()

#approval-page()
//


#preface[
  Puji syukur penulis panjatkan ke hadirat Tuhan Yang Maha Esa atas berkat dan rahmat-Nya sehingga penulis dapat menyelesaikan Prototipe ini dengan judul:

  #align(center)[
    *"RANCANG BANGUN SISTEM FRONTEND TRACER STUDY ITK DENGAN MODEL WATERFALL ITERATIVE MENGGUNAKAN METODE USER CENTERED DESIGN"*
  ]


  Prototipe ini disusun sebagai salah satu syarat untuk memperoleh gelar Sarjana Komputer pada Program Studi Informatika, Fakultas Sains dan Teknologi Data, Institut Teknologi Kalimantan.

  Dalam penyusunan Prototipe ini, penulis mendapat banyak bantuan dan dukungan dari berbagai pihak. Oleh karena itu, penulis mengucapkan terima kasih kepada:

  + Bapak Riska Kurniyanto Abdullah, S.T., M.Kom. selaku Dosen Pembimbing Utama yang telah memberikan bimbingan dan arahan selama penyusunan Prototipe ini.
  + Bapak Nur Fajri Azhar, S.Kom., M.Kom. selaku Dosen Pembimbing Pendamping yang telah membantu mengarahkan teknis dan penulisan.
  + Kedua orang tua dan keluarga yang selalu memberikan dukungan doa dan semangat, serta telah menemani dan mendidik hingga titik ini.
  + Teman-teman seperjuangan yang telah membantu dan memberikan motivasi.
  + Semua pihak yang tidak dapat disebutkan satu per satu.

  Penulis menyadari bahwa Prototipe ini masih jauh dari sempurna. Oleh karena itu, kritik dan saran yang membangun sangat penulis harapkan untuk perbaikan di masa mendatang.
]

#abstract-id(
  keywords: ("Tracer Study", "Frontend", "Waterfall Iterative", "User Centered Design"),
)[
  [PLACEHOLDER ABSTRAK BAHASA INDONESIA]

  #rect(fill: yellow.lighten(80%), stroke: 1pt + yellow, inset: 1em)[
    *PANDUAN PENULISAN (Hapus blok ini setelah selesai):*
    Tulis abstrak (150-250 kata) yang mencakup:
    1. *Masalah:* Sistem lama kaku, pengelolaan kuesioner sulit.
    2. *Tujuan:* Membangun Frontend baru yang modern & responsif.
    3. *Metode:* Waterfall Iteratif, Laravel Livewire, Tailwind CSS.
    4. *Hasil:* Antarmuka yang user-friendly dan efisien.
  ]

  [TULIS ABSTRAK ANDA DI SINI...]

  // Ikuti struktur Reno:
  //   1. Konteks masalah: Sistem tracer study ITK, kelemahan antarmuka saat ini
  //   2. Tujuan: Merancang dan mengimplementasikan sistem frontend tracer study ITK
  //   3. Metode: Waterfall Iterative dengan User Centered Design
  //   4. Teknologi: Laravel Livewire, Tailwind CSS, dashboard visualisasi data
  //   5. Hasil yang diharapkan: Sistem frontend yang responsif, user-friendly, dan meningkatkan partisipasi alumni
]

#abstract-en(
  keywords: ("tracer study", "frontend", "waterfall iterative", "user centered design"),
)[

  [PLACEHOLDER ABSTRAK BAHASA INGGRIS]

  #rect(fill: yellow.lighten(80%), stroke: 1pt + yellow, inset: 1em)[
    *WRITING GUIDE (Delete this block after writing):*
    1. *Motivation:* Current system is rigid; need for better UX. (Align with Reno's problem statement: "static questionnaire structure")
    2. *Objective:* Build a modern Frontend using Livewire & Tailwind.
    3. *Method:* Iterative Waterfall.
    4. *Impact:* Improved efficiency and alumni participation.
  ]

  [WRITE YOUR ABSTRACT HERE...]

  // Follow Reno's structure:
  //   1. Problem context: ITK tracer study system, current interface weaknesses
  //   2. Objective: Design and implement the ITK tracer study frontend system
  //   3. Method: Iterative Waterfall with User Centered Design (Reno uses Waterfall Iterative, ensure terminology matches)
  //   4. Technology: Laravel Livewire, Tailwind CSS, data visualization dashboard
  //   5. Expected result: Responsive, user-friendly frontend that improves alumni participation
]

#table-of-contents()
#list-of-figures()
#list-of-tables()

// ============================================================================
// BAB 1 - PENDAHULUAN
// ============================================================================
// TODO: CHAPTER 1 OVERALL ASSESSMENT
// =============================================================================
// Per Pedoman for Prototipe, BAB 1 MUST contain:
// ✓ Latar Belakang - Present but needs strengthening
// ✓ Rumusan Masalah - Present but could be more specific
// ✓ Batasan Masalah - Present, good scope definition
// ✓ Tujuan - Present, aligned with rumusan masalah
// ⚠ Manfaat - Present but incomplete (commented sections)
// ✗ MISSING: Potensi Dampak Fungsional/Komersial - REQUIRED for Prototipe!
// ✗ MISSING: Kerangka Penelitian (Mind Map/Fishbone) - REQUIRED!
//
// ISSUE: You are building a PROTOTYPE, not just a research paper.
// The proposal should emphasize WHAT you will BUILD, not just WHAT you will study.
// =============================================================================

#chapter(1, "Pendahuluan")[
  // ===========================================================================
  // 1.1 LATAR BELAKANG
  // ===========================================================================
  == Latar Belakang

  Kementerian Pendidikan Tinggi, Sains, dan Teknologi (Kemendiktisaintek) telah
  mewajibkan pelaksanaan tracer study di perguruan tinggi melalui berbagai
  regulasi, seperti Surat Edaran Dirjen Belmawa No. 471/B/SE/VII/2017,
  Permendikbud No. 3 Tahun 2020 tentang Standar Nasional Pendidikan Tinggi,
  serta Surat Edaran No. 4822/E1/DI.04.02/2021 tentang Indikator Kinerja Utama
  (IKU) PTN. Menurut situs resmi _Tracer Study_ Kemendiktisaintek, inisiatif
  pengumpulan data nasional dimulai sejak 2011 untuk memastikan standarisasi
  metode dan pelaporan tahunan ke Pangkalan Data Pendidikan Tinggi (PDDikti),
  guna mengevaluasi relevansi pendidikan tinggi dengan dunia kerja serta
  mendukung akreditasi BAN-PT. Perguruan tinggi memiliki kewajiban untuk terus
  meningkatkan kualitas pendidikan dan daya saing lulusan melalui instrumen
  ini.

  _Tracer Study_ merupakan kegiatan yang digunakan untuk mengetahui hubungan
  antara input pendidikan, proses pendidikan, dan hasil pendidikan (Shelly
  Andari dkk., 2021). Data yang valid mengenai masa tunggu kerja, kesesuaian
  bidang, dan kepuasan pengguna lulusan sangat krusial bagi evaluasi kurikulum
  institusi.

  Pelaksanaan _tracer study_ di Institut Teknologi Kalimantan (ITK)
  menjadi tanggung jawab Unit Penunjang Akademik (UPA) Pengembangan Karier dan
  Kewirausahaan. Hal ini sejalan dengan mandat yang tertuang dalam Peraturan
  Menteri Pendidikan, Kebudayaan, Riset, dan Teknologi Republik Indonesia Nomor
  41 Tahun 2024 tentang Organisasi dan Tata Kerja Institut Teknologi
  Kalimantan. Berdasarkan Pasal 63 ayat (1), UPA ini ditetapkan sebagai unit
  penunjang akademik yang berfokus di bidang pengembangan karier dan
  kewirausahaan.

  ITK telah menerapkan pemantauan alumni melalui situs web
  tracerstudy.itk.ac.id sesuai dengan kewajiban tersebut. Namun, berdasarkan
  hasil wawancara dan diskusi mengenai kebutuhan sistem dengan Kepala Unit
  Penunjang Akademik Pengembangan Karier dan Kewirausahaan, ditemukan
  kelemahan mendasar dalam sistem saat ini. Beliau menekankan bahwa pendekatan saat
  ini dalam mengelola kuesioner masih statis, dengan struktur data dan logika
  pertanyaan terintegrasi langsung ke dalam basis kode aplikasi. Masalah ini
  menunjukkan bahwa UPA tidak memiliki fleksibilitas untuk menangani perubahan
  sering pada instrumen survei, yang dapat disebabkan oleh revisi peraturan
  Kemendikbudristek atau kebutuhan data program penelitian tertentu.
  // TODO: Add specific UI/UX complaints here to differentiate from Reno (Backend focus).
  // Example: "Selain itu, alumni mengeluhkan tampilan yang tidak responsif di perangkat mobile..."

  Hal ini menyebabkan ketergantungan teknologi pada pengembang, karena setiap
  perubahan pada pertanyaan memerlukan modifikasi pada kode komputer. Sejumlah
  pengembangan sistem informasi studi jejak berbasis web telah dilakukan untuk
  mendigitalkan pelaporan akreditasi universitas dan pengumpulan data alumni.
  Sebagian besar sistem saat ini menyediakan alat untuk mengisi survei melalui
  situs web. Namun, sebagian besar solusi saat ini masih berfokus pada
  kuesioner dengan kerangka kerja yang kaku, di mana alur survei dan daftar
  pertanyaan terintegrasi ke dalam kode sumber dan tidak dapat diakses oleh
  pengguna non-teknis. Karena perubahan kuesioner memerlukan keterlibatan
  pengembang, batasan ini membatasi kemampuan pengguna non-teknis untuk
  mengontrol instrumen.

  Merespons permasalahan tersebut, penelitian ini mengusulkan pengembangan antarmuka (_frontend_) sistem tracer study dengan fitur utama _Dynamic Form Rendering_ dan _Interactive Dashboard_. Fitur ini dirancang untuk menyajikan kuesioner yang secara otomatis menyesuaikan tampilan dan logika interaksi tanpa memerlukan perubahan kode program manual, memastikan pengalaman pengguna tetap konsisten meski instrumen survei diperbarui. Dengan adanya fitur tersebut, ketergantungan pada pembaruan antarmuka secara statis setiap kali terjadi perubahan kuesioner diharapkan dapat dieliminasi secara signifikan.

  Untuk memastikan proses pengembangan berjalan terstruktur, pengembangan ini menggunakan model _Waterfall Iterative_. Penggunaan pendekatan ini memungkinkan pengembangan antarmuka dilakukan secara sistematis melalui tahapan analisis kebutuhan pengguna, perancangan desain pengalaman pengguna (_UX Design_), implementasi antarmuka, dan pengujian kegunaan (_Usability Testing_), namun tetap membuka ruang perbaikan iteratif pada setiap fasenya untuk memastikan hasil akhir yang optimal dan terdokumentasi dengan baik.

  Berdasarkan pemaparan tersebut, penelitian ini akan difokuskan pada rancang bangun ulang sistem _frontend_ tracer study ITK yang adaptif, responsif, dan mudah digunakan (_user-friendly_). Melalui pengembangan ini, diharapkan sistem tidak hanya memfasilitasi kebutuhan pelaporan data yang akurat, tetapi juga secara signifikan meningkatkan kenyamanan alumni dalam mengisi kuesioner—yang pada gilirannya dapat mendongkrak tingkat partisipasi—serta menyediakan visualisasi data yang efektif bagi UPA Pengembangan Karier dan Kewirausahaan guna mendukung peningkatan mutu lulusan Institut Teknologi Kalimantan.

  // ===========================================================================
  // 1.2 RUMUSAN MASALAH
  // ===========================================================================
  == Rumusan Masalah

  Berdasarkan latar belakang di atas, rumusan masalah dalam penelitian ini adalah:
  + Bagaimana merancang antarmuka pengguna (_User Interface_) sistem tracer study yang responsif dan meminimalkan beban kognitif responden?
  + Bagaimana mengimplementasikan logika formulir dinamis pada sisi _client-side_ untuk mengakomodasi struktur pertanyaan yang bervariasi antar program studi?
  + Bagaimana membangun dashboard analitik interaktif yang dapat memvisualisasikan data capaian lulusan secara _real-time_ bagi manajemen ITK?

  == Tujuan

  Tujuan dari penelitian tugas akhir ini adalah:
  + Menghasilkan rancangan antarmuka sistem tracer study yang menerapkan prinsip _usability_ untuk meningkatkan pengalaman pengguna.
  + Membangun modul *frontend* yang mampu me-render formulir dinamis berdasarkan skema data yang dikirim oleh backend.
  + Mengimplementasikan dashboard visualisasi data yang menyajikan statistik tracer study dalam bentuk grafik yang mudah dipahami.

  == Batasan Rancangan
  Agar penelitian ini terarah, batasan rancangan ditetapkan sebagai berikut:
  + Penelitian ini hanya berfokus pada perancangan dan pengembangan sisi
    _frontend_ sistem tracer study Institut Teknologi Kalimantan, sehingga
    pengembangan _backend_ tidak dibahas secara mendalam.
  + Fitur yang dikembangkan dibatasi pada manajemen kuesioner dinamis dan
    alur proses utama tracer study, meliputi pengelolaan struktur kuesioner,
    periode pelaksanaan, distribusi kuesioner, serta pengelolaan data hasil
    isian sesuai kebutuhan Unit Penunjang Akademik Pengembangan Karier
    dan Kewirausahaan.
  + Implementasi menggunakan *Laravel Livewire* untuk interaktivitas antarmuka dan *Tailwind CSS* untuk tata letak responsif.
  + Mencakup halaman pendaratan (_landing page_), _wizard_ pengisian kuesioner dinamis, dan dashboard visualisasi data.
  + Pengujian tampilan terbatas pada hasil UAT.


  // ===========================================================================
  // 1.5 MANFAAT PENELITIAN
  // ===========================================================================
  == Manfaat

  Manfaat yang diharapkan dari penelitian ini adalah:
  + *Bagi Alumni*: Memberikan pengalaman pengisian kuesioner yang lebih mudah, cepat, dan dapat dilakukan melalui perangkat seluler dengan nyaman.
  + *Bagi Institusi (ITK)*: Tersedianya dashboard data yang *real-time* memudahkan pimpinan dan program studi dalam memantau capaian lulusan dan menyusun strategi perbaikan kurikulum.
  + *Bagi Tim Pengembang Selanjutnya*: Tersedianya dokumentasi antarmuka komponen (_component library_) yang dapat digunakan kembali untuk pengembangan modul lain di masa depan.

  // ===========================================================================
  // 1.6 POTENSI DAMPAK FUNGSIONAL/KOMERSIAL
  // ===========================================================================
  == Potensi Dampak Fungsional/Komersial

  1. Memberikan antarmuka sistem tracer study yang mampu menyajikan kuesioner dan data hasil tracer study secara lebih interaktif, efisien, dan mudah digunakan (_user-friendly_).
  2. Mengurangi tingkat _survey fatigue_ (kelelahan pengisian) pada alumni melalui pengalaman pengguna (_User Experience_) yang baik, sehingga validitas dan kuantitas data yang masuk meningkat.

  // ===========================================================================
  // 1.7 KERANGKA PENELITIAN
  // ===========================================================================
  == Kerangka Tugas Akhir

  #gambar(
    "../resources/images/diagram alir penelitian.png",
    caption: [Diagram Alir Penelitian Tugas Akhir],
    width: 65%,
  ) <fig:kerangka_penelitian>

  @fig:kerangka_penelitian menggambarkan kerangka tugas akhir yang menerapkan metode pengembangan _Waterfall Iterative_. Berbeda dengan model _waterfall_ klasik yang kaku, pendekatan ini memodifikasi alur linear dengan menambahkan mekanisme umpan balik yang memungkinkan perbaikan dilakukan ke tahap-tahap sebelumnya jika ditemukan ketidaksesuaian.

  Proses penelitian diawali dengan tahap Studi Literatur dan Identifikasi Masalah untuk membangun landasan teori serta merumuskan urgensi penelitian. Selanjutnya, masuk ke tahapan inti pengembangan sistem yang terdiri dari empat fase utama:
  1. *Analisis Kebutuhan*: Tahap pengumpulan dan pendefinisian seluruh kebutuhan fungsional maupun non-fungsional yang diperlukan oleh sistem tracer study, khususnya pada aspek antarmuka pengguna.
  2. *Perancangan Desain Antarmuka*: Pembuatan rancangan visual, struktur komponen, dan alur interaksi pengguna berdasarkan analisis kebutuhan yang telah disepakati.
  3. *Implementasi*: Tahap penerjemahan desain ke dalam kode program menggunakan framework Laravel Livewire dan Tailwind CSS.
  4. *Testing*: Pengujian sistem untuk memastikan fungsionalitas berjalan sesuai rencana dan bebas dari galat.

  Model _iterative waterfall_ adalah pengembangan dari model _waterfall_ yang memberikan jalur umpan balik atau perubahan pada setiap fase ke fase sebelumnya @stinjak2021. Hal ini memungkinkan kesalahan yang ditemukan pada tahap yang lebih akhir dapat dikoreksi pada tahap yang menjadi sumber permasalahan tersebut. Setelah seluruh fungsi utama dinyatakan valid pada tahap pengujian, alur pengembangan dalam penelitian ini kemudian diteruskan ke tahap analisis hasil dan diskusi, dan diakhiri dengan penarikan kesimpulan serta penyusunan saran.
]


// ============================================================================
// BAB 2 - TINJAUAN PUSTAKA
// ============================================================================
// =============================================================================
// TODO CHECKLIST - CHAPTER 2 COMPLETION
// =============================================================================
//
// ✅ DONE:
// [x] 2.1 Tracer Study - definition & ITK data
// [x] 2.2 Sistem Informasi Berbasis Web
// [x] 2.3 Teknologi: Laravel, Livewire, MySQL, JSON Schema
// [x] 2.4 Pola Arsitektur: MVC, Repository Pattern
// [x] 2.5 Manajemen Akses (RBAC)
// [x] 2.6 Penelitian Terdahulu (basic)
//
// ⬜ TODO - ADD NEW SUBSECTIONS:
//
// [ ] 1. ADD: PhpSpreadsheet (under Teknologi Pengembangan)
//     - Go to: https://phpspreadsheet.readthedocs.io/
//     - Write 1-2 paragraphs: what it is, why you chose it for Excel export
//     - Find citable source (documentation or paper)
//
// [ ] 2. ADD: Chart.js OR Livewire Charts (under Teknologi Pengembangan)
//     - DECIDE: Which visualization library will you use?
//     - Read its documentation
//     - Write 1-2 paragraphs explaining it
//     - Add citation
//     - This complements Reno's backend focus on data storage (JSON/MySQL)
//
// [ ] 3. ADD NEW SECTION: Standar Pelaporan BAN-PT (CRITICAL!)
//     - FIND: Official BAN-PT LKPS document/template
//     - IDENTIFY: Which tables relate to tracer study (Tabel 3a? 3b? 8?)
//     - WRITE: Section explaining format structure & requirements
//     - This JUSTIFIES why your export module exists!
//
// [ ] 4. ADD NEW SECTION: Standar Pelaporan Kementerian Dikti
//     - VISIT: tracerstudy.kemdikbud.go.id
//     - DOCUMENT: What data fields are required
//     - EXPLAIN: The reporting structure
//
// ⬜ TODO - MODIFY EXISTING:
//
// [ ] 5. TRIM: "Pembangunan Formulir Dinamis" section
//     - Keep only 2-3 sentences as context for your mapping system
//     - Remove detailed explanation (that's Reno's scope)
//
// [ ] 6. EXPAND: Penelitian Terdahulu
//     - Currently only 4 references - need 5-10
//     - Search Google Scholar for:
//       * "tracer study reporting system"
//       * "alumni data analytics dashboard"
//       * "academic reporting automation"
//     - Add 2-3 more relevant references
//
// =============================================================================
// QUESTIONS TO ANSWER YOURSELF:
// - Have you seen the actual BAN-PT LKPS template?
// - Do you know which specific tables your export will generate?
// - Have you decided on Chart.js vs Livewire Charts?
// =============================================================================

#chapter(2, "Tinjauan Pustaka")[
  Bab ini membahas landasan teori yang digunakan dalam pengembangan frontend sistem _tracer study_. Teori yang dibahas mencakup konsep _tracer study_, sistem informasi berbasis web, desain antarmuka dan pengalaman pengguna (_UI/UX_), serta teknologi pengembangan perangkat lunak yang relevan.

  // ===========================================================================
  // 2.1 TRACER STUDY
  // ===========================================================================
  == Tracer Study

  Keberhasilan perguruan tinggi salah satunya ditentukan oleh aspek relevansi. Pada aspek ini, perguruan tinggi berperan sebagai penyelenggara pendidikan yang mampu mencetak lulusan dengan daya saing tinggi untuk menghadapi dunia kerja. _Tracer Study_ digunakan sebagai instrumen untuk menelusuri keterkaitan antara _input_ pendidikan, proses pembelajaran, _output_ yang dihasilkan, serta capaian hasil pendidikan @fitriani2024.

  _Tracer Study_ memenuhi kebutuhan nasional melalui kebijakan Kementerian Pendidikan seperti Surat Edaran Dirjen Belmawa No. 471/B/SE/VII/2017 dan Permendikbud No. 3 Tahun 2020, yang mewajibkan perguruan tinggi menyediakan data akurat tentang transisi lulusan ke dunia kerja untuk evaluasi relevansi pendidikan serta syarat akreditasi BAN-PT. Secara internal, perguruan tinggi memanfaatkannya sebagai umpan balik untuk perbaikan kurikulum, pengukuran _outcome_ seperti tingkat penyerapan kerja, penguatan jaringan alumni, dan peningkatan mutu pembelajaran berkelanjutan.

  _Tracer Study_ merupakan salah satu sarana yang digunakan untuk menelusuri informasi alumni dan mampu menyediakan berbagai informasi yang bermanfaat seperti data pribadi, riwayat pendidikan ataupun informasi riwayat pekerjaan @hasan2022.

  _Tracer study_ memiliki peran penting sebagai sarana memperoleh informasi dari alumni terkait _outcome_ pendidikan, termasuk relevansi ilmu yang dipelajari selama kuliah dengan kebutuhan dunia kerja, aktivitas yang dijalani setelah lulus, perkembangan karier, serta kemampuan mereka dalam bersaing di lingkungan kerja. Data yang diperoleh digunakan sebagai dasar evaluasi kinerja perguruan tinggi sekaligus upaya peningkatan mutu pendidikan di masa mendatang. Selain itu, pelaksanaan _tracer study_ juga menjadi salah satu persyaratan dalam proses akreditasi oleh Badan Akreditasi Nasional Perguruan Tinggi (BAN-PT) @agustin2019.

  Di Institut Teknologi Kalimantan (ITK), pelaksanaan _tracer study_ menjadi tanggung jawab Unit Penunjang Akademik (UPA) Pengembangan Karier dan Kewirausahaan. Hal ini sejalan dengan mandat yang tertuang dalam Peraturan Menteri Pendidikan, Kebudayaan, Riset, dan Teknologi Republik Indonesia Nomor 41 Tahun 2024 tentang Organisasi dan Tata Kerja Institut Teknologi Kalimantan. Data dari portal _tracer study_ Kemendikti menunjukkan bahwa ITK secara rutin melaporkan data lulusan ke sistem nasional @kemendikti2026.

  // ===========================================================================
  // 2.2 WEB-BASED INFORMATION SYSTEMS & FRONTEND ARCHITECTURE
  // ===========================================================================
  // ===========================================================================
  // 2.2 WEB-BASED INFORMATION SYSTEMS & FRONTEND ARCHITECTURE
  // ===========================================================================
  == Sistem Informasi Berbasis Web dan Arsitektur Frontend

  Sistem informasi berbasis web adalah sistem yang menggunakan teknologi web untuk memproses dan menyebarkan informasi kepada pengguna melalui jaringan internet. Dalam konteks modern, arsitektur pengembangan web telah berevolusi dari model _Multi-Page Application_ (MPA) tradisional menuju _Single Page Application_ (SPA) yang menawarkan pengalaman pengguna lebih responsif @spa_research.

  Pada arsitektur SPA, aplikasi memuat satu dokumen HTML tunggal dan memperbarui konten halaman secara dinamis saat pengguna berinteraksi dengan aplikasi, tanpa memuat ulang seluruh halaman. Hal ini memberikan pengalaman yang cepat dan mulus, menyerupai aplikasi desktop. Namun, untuk sistem yang membutuhkan _Search Engine Optimization_ (SEO) yang baik dan waktu muat awal yang cepat, pendekatan hibrida seperti _Server-Side Rendering_ (SSR) atau penggunaan framework modern seperti Laravel Livewire menjadi solusi yang efektif karena mampu menyederhanakan pengelolaan _state_ antara server dan klien tanpa kompleksitas frontend yang berlebihan @livewire.

  // ===========================================================================
  // 2.3 UI/UX DESIGN
  // ===========================================================================
  == Antarmuka Pengguna (UI) dan Pengalaman Pengguna (UX)

  === _User Interface_ (UI)
  _User Interface_ (UI) adalah jembatan komunikasi antara pengguna dan sistem. UI yang baik harus memenuhi prinsip kejelasan (_clarity_), konsistensi, dan umpan balik yang responsif. Desain UI tidak hanya tentang estetika visual, tetapi juga tentang bagaimana elemen-elemen antarmuka membantu pengguna menyelesaikan tugas mereka dengan efisien.

  === _User Experience_ (UX)
  _User Experience_ (UX) mencakup seluruh aspek interaksi pengguna dengan perusahaan, layanannya, dan produknya. Dalam konteks sistem _tracer study_, UX yang buruk dapat menyebabkan _survey fatigue_, yaitu kelelahan responden dalam mengisi kuesioner yang panjang dan rumit, yang pada akhirnya menurunkan tingkat partisipasi alumni @rasyid2023.

  === _User Centered Design_ (UCD)
  _User Centered Design_ (UCD) atau _Human-Centered Design_ (HCD) menurut ISO 9241-210 adalah pendekatan desain sistem interaktif yang berfokus pada pengguna, kebutuhan, dan lingkungan mereka di setiap tahapan proses desain @iso9241. Pendekatan ini memastikan bahwa sistem yang dibangun benar-benar menyelesaikan masalah pengguna, bukan hanya memenuhi spesifikasi teknis.

  Prinsip utama UCD meliputi pemahaman eksplisit tentang pengguna dan tugasnya, keterlibatan pengguna dalam proses desain, serta evaluasi desain yang berbasis pengguna @w3c_ucd. Don Norman dalam prinsip interaksinya menekankan pentingnya _Visibility_ (keterlihatan status sistem), _Feedback_ (umpan balik aksi), _Affordance_ (keterjangkauan fungsi), dan _Constraints_ (batasan untuk mencegah kesalahan) dalam menciptakan produk yang intuitif. // TODO: Cite "The Design of Everyday Things" by Don Norman

  // ===========================================================================
  // 2.4 DESIGN TOOLS (FIGMA)
  // ===========================================================================
  == Perangkat Desain (Figma)

  Figma adalah alat desain antarmuka berbasis _cloud_ yang memungkinkan kolaborasi tim secara _real-time_. Dalam pengembangan perangkat lunak, Figma digunakan untuk membuat _wireframe_, rupa-rupa ketepatan tinggi (_high-fidelity prototype_), dan sistem desain yang konsisten. Fitur kolaborasinya memungkinkan pengembang dan desainer untuk bekerja bersama dalam satu kanvas, mempercepat proses iterasi desain sebelum masuk ke tahap implementasi kode @waterfall_prototyping_agile.

  // ===========================================================================
  // 2.5 DEVELOPMENT FRAMEWORK (LARAVEL & LIVEWIRE)
  // ===========================================================================
  == Framework Pengembangan

  === Laravel
  Laravel adalah kerangka kerja aplikasi web berbasis PHP dengan sintaks yang ekspresif dan elegan. Laravel mengikuti pola arsitektur _Model-View-Controller_ (MVC) yang memisahkan logika aplikasi, antarmuka pengguna, dan data. Keunggulan Laravel terletak pada ekosistemnya yang kuat, keamanan bawaan, dan kemudahan dalam membangun aplikasi skala besar @laravel.

  === Laravel Livewire
  Laravel Livewire adalah kerangka kerja _full-stack_ untuk Laravel yang memungkinkan pembangunan antarmuka dinamis tanpa meninggalkan kenyamanan PHP. Livewire memungkinkan pengembang untuk membuat komponen UI yang reaktif (seperti formulir dinamis dan pencarian _real-time_) tanpa kerumitan menulis JavaScript kompleks secara manual. Hal ini sangat relevan untuk pengembangan _tracer study_ yang membutuhkan interaktivitas tinggi pada formulir kuesioner @livewire.

  === Tailwind CSS
  Tailwind CSS adalah kerangka kerja CSS yang mengutamakan utilitas (_utility-first_). Berbeda dengan kerangka kerja UI tradisional seperti Bootstrap yang menyediakan komponen siap pakai, Tailwind menyediakan kelas-kelas utilitas tingkat rendah yang memungkinkan pengembang membangun desain kustom sepenuhnya tanpa meninggalkan HTML. Pendekatan ini mempercepat proses _styling_ dan memudahkan pembuatan desain responsif yang adaptif terhadap berbagai ukuran layar perangkat.

  // ===========================================================================
  // 2.6 DATA VISUALIZATION
  // ===========================================================================
  == Visualisasi Data (Dashboard)

  Visualisasi data adalah representasi grafis dari informasi dan data. Dengan menggunakan elemen visual seperti bagan, grafik, dan peta, alat visualisasi data menyediakan cara yang mudah diakses untuk melihat dan memahami tren, pencilan (_outliers_), dan pola dalam data. Dalam konteks _tracer study_, visualisasi data pada dashboard berfungsi sebagai alat pendukung keputusan (_Decision Support System_) bagi manajemen perguruan tinggi untuk mengevaluasi kinerja lulusan @benbba2021comparison.

  // ===========================================================================
  // 2.7 SOFTWARE DEVELOPMENT METHOD
  // ===========================================================================
  == Metode Pengembangan Perangkat Lunak

  Model _Waterfall_ adalah salah satu metodologi pengembangan perangkat lunak yang paling tua dan terstruktur yang digunakan dalam industri teknologi informasi. Ini adalah model sekuensial yang menguraikan pengembangan perangkat lunak menjadi serangkaian tahap berurutan. Model _Waterfall_ dikenal dengan tahap-tahapnya yang jelas dan tidak memungkinkan untuk kembali ke tahap sebelumnya setelah tahap tertentu sudah selesai @priyanto2025.

  #gambar(
    "../resources/images/waterfall_model_illustration.png",
    caption: [Ilustrasi Model Waterfall @bassil2012simulation],
    width: 80%,
  ) <fig:waterfall_model>

  Menurut @semarandhanu2024, metode _Waterfall_ terdiri dari tahapan-tahapan berikut:
  1. *Requirements Analysis*: Menjelaskan mengenai permasalahan yang ada serta analisis agar sistem dapat bekerja secara efisien.
  2. *Design*: Memberikan output analisis masalah yang digambarkan dalam bentuk diagram perancangan sistem dan _blueprint_ sistem.
  3. *Implementation*: Melakukan pengkodean (_coding_) berdasarkan hasil perancangan dan mengimplementasikan antarmuka pengguna.
  4. *Testing*: Melakukan pengujian sistem secara menyeluruh untuk memastikan fungsionalitas sistem sesuai dengan spesifikasi.
  5. *Maintenance*: Melakukan pemeliharaan dan pemeriksaan sistem secara berkala setelah sistem diserahkan kepada pengguna.

  _Iterative Waterfall_ merupakan pengembangan metode _Waterfall_, di mana setiap tahapan harus dilakukan secara bertahap. Apabila tahapan pertama belum selesai maka tahapan berikutnya belum dapat dilakukan. Pada _iterative waterfall_, akan dilakukan perulangan pada tahap tertentu hingga proses tersebut selesai. Perulangan dilakukan karena masih adanya kekurangan ataupun kesalahan yang terjadi pada tahap tertentu @stinjak2021.

  // ===========================================================================
  // 2.8 TESTING (AUTOMATED & UAT)
  // ===========================================================================
  == Pengujian Perangkat Lunak

  _Software testing_ merupakan aktivitas penting dalam _software engineering_. Testing akan mengeksekusi perangkat lunak dengan tujuan untuk melihat kesesuaiannya dengan kebutuhan yang didefinisikan @min2020.

  === _Automated Testing_
  _Unit testing_ merupakan tahap dasar dalam pengujian. _Unit testing_ berfokus pada pengujian bagian pembangun (_building block_) yang lebih kecil daripada program atau sistem yang diuji. Pengujian ini mengeksekusi setiap fitur atau fungsionalitas untuk memastikan masing-masing fitur tersebut berfungsi sesuai dengan yang diharapkan @hasibuan2021. _Unit test_ adalah tes otomatis yang memverifikasi bagian kecil dari kode secara terisolasi.

  === _User Acceptance Testing_ (UAT)
  Setelah tahap pengujian unit selesai, dilakukan pengujian penerimaan pengguna atau _User Acceptance Testing_ (UAT). UAT dilakukan untuk memvalidasi apakah sistem yang dibangun telah memenuhi kebutuhan pengguna akhir dan layak untuk digunakan dalam lingkungan operasional. Pengujian ini melibatkan perwakilan pengguna dari berbagai _role_ untuk memastikan alur kerja bisnis telah terakomodasi dengan baik.



  // ===========================================================================
  // 2.x MODEL VIEW CONTROLLER
  // ===========================================================================
  == Model View Controller (MVC)

  // #rect(fill: blue.lighten(90%), stroke: 1pt + blue, inset: 1em)[
  //   *INSTRUKSI:* Jelaskan MVC dengan bahasa Anda sendiri.
  //   *Poin Utama:*
  //   - MVC membagi aplikasi menjadi 3 bagian: Model, View, Controller.
  //   - *Model:* Mengurus data & database.
  //   - *View:* Mengurus tampilan (UI).
  //   - *Controller:* Logika penghubung.
  //   *Wajib Sitasi:* @permana2024 dan @alkaff2021
  // ]

  Menurut @lumba2021implementation, MVC membagi aplikasi menjadi 3 bagian: Model, View, Controller:
  + Model adalah kelas yang digunakan untuk mengimplementasikan logika domain
    data. Kelas-kelas ini digunakan untuk mengambil, menyisipkan, atau mengubah
    data ke dalam basis data yang terkait dengan aplikasi.
  + View digunakan untuk membuat antarmuka aplikasi. Pengguna berinteraksi
    dengan aplikasi menggunakan desain antarmuka.
  + Controller adalah kelas yang digunakan untuk merespons permintaan pengguna
    dan menghubungkannya dengan model.


  // ===========================================================================
  // 2.x BUSINESS PROCESS MODEL NOTATION
  // ===========================================================================
  == _Business Process Model and Notation_ (BPMN)

  // #rect(fill: blue.lighten(90%), stroke: 1pt + blue, inset: 1em)[
  //   *INSTRUKSI:* Jelaskan BPMN (Business Process Model and Notation).
  //   *Poin Utama:*
  //   - Standar visual untuk memodelkan proses bisnis.
  //   - Menggunakan diagram alur (flowchart) untuk menggambarkan urutan aktivitas.
  //   *Wajib Sitasi:* @firdaus2022, @ismanto2020
  // ]

  Secara umum, BPMN (Business Process Model and Notation) digunakan sebagai
  bahasa untuk membuat model proses bisnis atau sebagai standar untuk
  memodelkan proses bisnis. Inisiatif Manajemen Proses Bisnis (BPMI) telah
  membuat notasi ini sepenuhnya terbuka. Meskipun BPMN mungkin terlihat seperti
  diagram alir, namun sebenarnya BPMN menyediakan alat yang jauh lebih canggih
  untuk menggambarkan dan mensimulasikan perilaku proses bisnis, serta
  menawarkan kemudahan penggunaan yang lebih besar.

  Dalam penelitian ini, penggunaan BPMN dipilih sebagai standar pemodelan proses bisnis utama untuk memenuhi kebutuhan spesifikasi dokumentasi. Pemilihan ini juga bertujuan untuk efisiensi dan menghindari redundansi dengan _Activity Diagram_, mengingat kedua notasi tersebut memiliki kapabilitas yang serupa dalam menggambarkan alur aktivitas sistem @tangkawarow2016comparative.


  // ===========================================================================
  // 2.x UNIFIED MODELLING LANGUAGE
  // ===========================================================================
  == _Unified Modelling Language_ (UML)

  // #rect(fill: blue.lighten(90%), stroke: 1pt + blue, inset: 1em)[
  //   *INSTRUKSI:* Jelaskan UML (Unified Modeling Language).
  //   *Poin Utama:*
  //   - Bahasa standar untuk visualisasi desain sistem.
  //   - Digunakan untuk mendokumentasikan sistem berorientasi objek (OO).
  //   *Wajib Sitasi:* @mubarak2019
  // ]
  Unified Modeling Language atau yang biasa dikenal dengan singkatan UML,
  adalah bahasa standar yang digunakan untuk menggambarkan, menjelaskan, dan
  membangun perangkat lunak. Ini merupakan metode dalam pengembangan sistem
  berbasis objek yang juga berfungsi sebagai alat bantu dalam proses
  pengembangan sistem. Beberapa alat bantu yang digunakan dalam perancangan
  berbasis objek dengan menggunakan UML meliputi diagram use case, activity
  diagram, sequence diagram, dan class diagram @binangkit2023pemanfaatan.

  // ===========================================================================
  // 2.x USE CASE DIAGRAM
  // ===========================================================================
  == _Use Case Diagram_

  // #rect(fill: blue.lighten(90%), stroke: 1pt + blue, inset: 1em)[
  //   *INSTRUKSI:* Jelaskan Use Case Diagram.
  //   *Poin Utama:*
  //   - Menggambarkan interaksi antara "Aktor" (User) dan Sistem.
  //   - Fokus pada *apa* yang bisa dilakukan sistem (Fungsional), bukan *bagaimana*.
  //   *Wajib Sitasi:* @mubarak2019
  // ]

  Use Case Diagram adalah diagram perilaku dalam UML yang menggambarkan
  persyaratan fungsional perangkat lunak. Diagram kasus penggunaan dapat
  digunakan untuk memahami bagaimana sistem seharusnya bekerja @fauzan2021different.

  #gambar(
    "../resources/images/use-case-diagram-component.png",
    caption: [komponen use case @fauzan2021different],
    width: 65%,
  ) <fig:use-case-diagram-component>


  #gambar(
    "../resources/images/use-case-diagram-example.png",
    caption: [contoh diagram _use case_ @fauzan2021different],
    width: 65%,
  ) <fig:use-case-diagram-example>


  // ===========================================================================
  // 2.x PENELITIAN TERDAHULU
  // ===========================================================================
  == Penelitian Terdahulu

  Berikut adalah beberapa penelitian terdahulu yang relevan:

  #figure(
    table(
      columns: (auto, 2fr, 2fr, 2fr),
      align: (center, left, left, left),
      table.header([*No*], [*Peneliti & Judul*], [*Metode*], [*Hasil & Celah*]),

      [1],
      [Mohidin & Asep (2023) \ "Rancang Bangun Tracer Study UNUSIA Berbasis Web Menggunakan Metode RAD"],
      [Rapid Application Development (RAD)],
      [Menghasilkan sistem tracer study berbasis web. Celah: Belum fokus pada aspek UX dan visualisasi dashboard.],

      [2],
      [Fajrian et al. (2024) \ "Rancang Bangun Sistem Tracer Study Universitas Peradaban"],
      [Unified Process],
      [Sistem tracer study dengan fitur dasar. Celah: Antarmuka masih statis, belum ada dashboard analitik.],

      [3],
      [Putri & Pakereng (2021) \ "Pengembangan Sistem Informasi Tracer Study Berbasis UCD"],
      [User Centered Design (UCD)],
      [Menerapkan pendekatan UCD dengan Laravel. Celah: Format ekspor belum sesuai standar BAN-PT.],

      [4],
      [Haliq et al. (2021) \ "Analisis Hasil E-Tracer Study 2019 pada Penerima Beasiswa ITK"],
      [Analisis Deskriptif],
      [Menganalisis data tracer study ITK. Celah: Pengumpulan data masih manual dengan tingkat partisipasi terbatas.],

      [5],
      [Hasan & Nurlelah (2022) \ "Rancang Bangun Sistem Informasi Tracer Study Formulir 2021 Berbasis Web"],
      [Waterfall dengan CodeIgniter 4],
      [Sistem tracer study untuk STKIP PGRI Jombang. Celah: Belum menerapkan pendekatan UCD dan antarmuka kurang responsif.],

      [6],
      [Saragih et al. (2023) \ "Perancangan User Experience Design untuk Platform Rekam Data Jejak Alumni"],
      [UX Design Research],
      [Fokus pada perancangan UX untuk tracer study. Celah: Belum sampai tahap implementasi sistem.],

      [7],
      [Afriyadi, Putra & Purnomo (2025) \ "Rancang Bangun Tracer Study Berbasis Website pada Fakultas Ilmu Komputer Universitas Dharmas Indonesia"],
      [Waterfall],
      [Sistem tracer study dengan login multi-level dan fitur lowongan kerja. Celah: Belum menerapkan dashboard analitik dan antarmuka kurang responsif.],

      [8],
      [Yunanto et al. (2021) \ "Tracer Study Information System for Higher Education"],
      [SDLC Waterfall],
      [Prototipe sistem terpadu bagi Universitas Negeri Jakarta dengan manajemen alumni dan akses multi-level. Celah: Belum fokus pada UX dan visualisasi data.],

      [9],
      [Priyanto & Ramayanti (2025) \ "Design and Development of a Web-Based Tracer Study System Using the Waterfall Method"],
      [Waterfall],
      [Platform dengan email blast dan dashboard grafik. Celah: Belum menerapkan pendekatan UCD untuk antarmuka pengisian kuesioner.],

      [10],
      [Sasmita et al. (2024) \ "Evaluasi Kualitas Sistem Tracer Study INSTIKI Menggunakan Blackbox Testing"],
      [Blackbox Testing],
      [Evaluasi kualitas fungsional dengan Equivalence Partitioning dan Boundary Value Analysis. Celah: Memberikan rekomendasi desain ulang UI/UX namun belum diimplementasikan.],
    ),
    caption: "Tabel Perbandingan Penelitian Terdahulu",
  ) <tabel-penelitian-terdahulu>
]

// ============================================================================
// BAB 3 - DESAIN DAN IMPLEMENTASI
// ============================================================================
// TODO: CHAPTER 3 OVERALL ASSESSMENT
// =============================================================================
// Per Pedoman for Prototipe, BAB 3 (Desain dan Implementasi) MUST contain:
// ✗ Garis besar prototipe - Partially present but incomplete
// ⚠ Diagram alir/flowchart - Mentioned but not shown!
// ⚠ Prosedur - Described but lacks detail
// ✗ Desain - CRITICAL: No actual designs shown!
// ✗ Sumber daya - Not specified
// ⚠ Rencana jadwal - Present but incomplete
//
// CRITICAL ISSUES:
// 1. NO DIAGRAMS! For a Prototipe thesis, you MUST include:
//    - Use Case Diagram (you have this in /docs!)
//    - Class Diagram
//    - Sequence Diagram
//    - Database ERD
//    - System Architecture Diagram
//    - UI Wireframes/Mockups
//
// 2. Commented-out content is actually GOOD - uncomment and complete it!
//
// 3. Methodology choice: You mention "Waterfall" but the commented code says
//    "Iterative Waterfall" - be consistent and justify your choice
//
// YOUR WORKSPACE HAS GREAT DOCS! Use them:
// - /docs/erd.mmd - Your ERD diagram
// - /docs/class-diagram.mmd - Class diagram
// - /docs/architecture.mmd - Architecture diagram
// - /docs/sequence/* - Sequence diagrams
// - /docs/use-case/* - Use case diagrams
//
// RECOMMENDED CHAPTER STRUCTURE:
// 3.1 Konsep Desain (User-Centered Design explanation)
// 3.2 Spesifikasi Teknis (Hardware/Software requirements)
// 3.3 Desain Sistem
//     3.3.1 Arsitektur Sistem (with diagram)
//     3.3.2 Desain Basis Data (ERD)
//     3.3.3 Desain Kelas (Class Diagram)
//     3.3.4 Desain Alur Proses (Sequence Diagrams)
// 3.4 Desain Antarmuka (Wireframes)
// 3.5 Tahapan Pembuatan Prototipe (Methodology)
// 3.6 Rencana Jadwal
// =============================================================================

// BAB 3 - DESAIN DAN IMPLEMENTASI
// Konten dipindahkan ke blok chapter berikutnya

#chapter(3, "Desain dan Implementasi")[
  Bab ini menjelaskan metodologi yang digunakan dalam pengerjaan tugas akhir. Penjelasan meliputi alat dan bahan yang digunakan, rancangan sistem yang diusulkan, serta tahapan-tahapan yang dilakukan dari awal hingga akhir penelitian.

  // ===========================================================================
  // 3.1 KONSEP DESAIN
  // ===========================================================================
  == Konsep Desain

  Konsep desain sistem tracer study ini berfokus pada kemudahan penggunaan (_usability_) dan kecepatan akses. Mengingat responden utama adalah alumni yang memiliki kesibukan, antarmuka harus dirancang intuitif untuk meminimalkan waktu pengisian.

  === Pendekatan _User Centered Design_
  Proses desain akan melibatkan pengguna sejak awal melalui pembuatan persona alumni (mahasiswa _fresh graduate_, alumni yang sudah bekerja) dan admin (staff Career Center, Kaprodi). Wawancara awal dilakukan untuk memahami _pain points_ pada sistem yang ada.

  === Hirarki Visual dan Tipografi
  Antarmuka menggunakan font _Inter_ yang memiliki keterbacaan tinggi pada layar. Penggunaan _whitespace_ yang cukup dan hirarki ukuran font yang jelas (heading, subheading, body) diterapkan untuk memudahkan pemindaian informasi.

  === Palet Warna
  Palet warna mengacu pada identitas visual ITK dengan _Maroon_ (#800000) sebagai warna primer, dilengkapi dengan warna netral (putih, abu-abu) untuk menjaga keseimbangan visual dan kontras yang baik.

  // TODO: Add "3.1.x Konsep Dynamic Form Rendering"
  // Explain how the Frontend consumes the JSON structure (from Reno's Backend) to render inputs.
  // This is the direct partner to Reno's "Manajemen Kuesioner".

  // TODO: Add "3.1.x Konsep Interactive Dashboard"
  // Explain the visualization strategy (Charts, Filters) for the admin/alumni dashboards.


  // ===========================================================================
  // 3.2 SPESIFIKASI TEKNIS
  // ===========================================================================
  == Spesifikasi Teknis
  Alat dan bahan yang digunakan dalam pengembangan sistem ini dibagi menjadi perangkat keras dan perangkat lunak.

  === Perangkat Keras
  Spesifikasi perangkat keras yang digunakan untuk pengembangan adalah:
  + Processor: AMD Ryzen 5 5600H atau setara
  + RAM: 16 GB DDR4
  + Penyimpanan: SSD 512 GB

  === Perangkat Lunak
  Perangkat lunak yang digunakan meliputi:
  + *Sistem Operasi*: Linux (Arch Linux / Ubuntu) / Windows 11
  + *Bahasa Pemrograman*: PHP 8.2 (Backend), JavaScript (Frontend Interactivity)
  + *Framework*: Laravel 11, Livewire 3
  + *Basis Data*: MySQL 8.0
  + *Desain UI/UX*: Figma
  + *Code Editor*: Visual Studio Code / Neovim
  + *Version Control*: Git

  // ===========================================================================
  // 3.3 TAHAPAN PEMBUATAN PROTOTIPE
  // ===========================================================================
  == Tahapan Pelaksanaan Penelitian
  Penelitian ini dilaksanakan menggunakan metode _Waterfall Iteratif_. Tahapan-tahapan yang dilakukan adalah sebagai berikut:

  === Analisis Kebutuhan
  Pada tahap ini dilakukan identifikasi kebutuhan fungsional dan non-fungsional sistem berdasarkan studi literatur dan observasi awal.

  ==== Kebutuhan Fungsional (_Functional Requirements_)
  Kebutuhan fungsional menggambarkan fitur-fitur utama yang harus tersedia dalam sistem.

  #figure(
    table(
      columns: (auto, 1fr, 2fr),
      align: (center, left, left),
      table.header([*Kode*], [*Fitur Utama*], [*Deskripsi*]),

      [FR-01],
      [Autentikasi Pengguna],
      [Sistem memvalidasi login pengguna (Alumni/Admin) menggunakan NIM/NIP dan password.],

      [FR-02], [Dashboard Alumni], [Menampilkan status pengisian kuesioner dan progres tahapan survei.],
      [FR-03],
      [Pengisian Kuesioner],
      [Menyediakan formulir interaktif dengan validasi input dan logika pertanyaan dinamis.],

      [FR-04], [Penyimpanan Draf], [Menyimpan jawaban sementara secara otomatis (_auto-save_) sebelum dikirim final.],
      [FR-05], [Riwayat Pengisian], [Menampilkan riwayat partisipasi tracer study periode sebelumnya.],
    ),
    caption: "Tabel Kebutuhan Fungsional Sistem",
  ) <tabel-fr>

  ==== Kebutuhan Non-Fungsional (_Non-Functional Requirements_)
  Kebutuhan non-fungsional mendefinisikan batasan kualitas sistem.

  #figure(
    table(
      columns: (auto, 1fr, 2fr),
      align: (center, left, left),
      table.header([*Kode*], [*Parameter*], [*Deskripsi*]),

      [NFR-01],
      [Responsivitas],
      [Antarmuka harus dapat menyesuaikan tampilan secara otomatis di perangkat _desktop_, _tablet_, dan _mobile_.],

      [NFR-02], [Kinerja], [Waktu muat halaman utama tidak boleh lebih dari 3 detik pada koneksi standar.],
      [NFR-04], [Keamanan], [Data pribadi alumni harus dilindungi dengan enkripsi saat transmisi.],
    ),
    caption: "Tabel Kebutuhan Non-Fungsional Sistem",
  ) <tabel-nfr>

  === Perancangan Desain (_Design_)
  Tahap perancangan menerjemahkan kebutuhan menjadi representasi visual dan teknis.

  ==== Arsitektur Sistem
  Arsitektur sistem menggambarkan interaksi komponen utama dalam aplikasi. Sistem dibangun menggunakan arsitektur _Monolithic_ dengan pola MVC, di mana Livewire berperan sebagai jembatan reaktif antara tampilan (_View_) dan logika (_Controller_) tanpa memerlukan API terpisah untuk interaksi dasar.

  // TODO: Masukkan gambar Arsitektur Sistem Anda di sini
  // Simpan gambar sebagai: resources/images/architecture.png
  #figure(
    // image("../resources/images/architecture.png", width: 80%),
    rect(width: 80%, height: 6cm, fill: luma(240), stroke: 1pt + luma(180))[
      #align(
        center + horizon,
      )[*PLACEHOLDER: Gambar Arsitektur Sistem* \ Simpan gambar di `resources/images/architecture.png` \ lalu uncomment baris `image` di atas.]
    ],
    caption: [Arsitektur Sistem Tracer Study],
  ) <fig:architecture>

  ==== _Use Case Diagram_
  _Use Case Diagram_ memvisualisasikan interaksi aktor (Alumni, Admin) dengan fungsi-fungsi utama sistem.

  // #figure(
  //   rect(width: 80%, height: 8cm, fill: luma(240), stroke: 1pt + luma(180))[
  //     #align(
  //       center + horizon,
  //     )[*PLACEHOLDER: Use Case Diagram* \ Simpan gambar di `resources/images/usecase.png` \ lalu uncomment baris `image` di atas.]
  //   ],
  //   caption: [Use Case Diagram Sistem Tracer Study],
  // ) <fig:usecase>

  ==== _Activity Diagram_
  _Activity Diagram_ menggambarkan alur kerja proses utama, seperti proses login dan pengisian kuesioner.

  // TODO: Masukkan gambar Activity Diagram Anda di sini
  // Simpan gambar sebagai: resources/images/activity_login.png
  #figure(
    // image("../resources/images/activity_login.png", width: 60%),
    rect(width: 60%, height: 10cm, fill: luma(240), stroke: 1pt + luma(180))[
      #align(
        center + horizon,
      )[*PLACEHOLDER: Activity Diagram Login* \ Simpan gambar di `resources/images/activity_login.png` \ lalu uncomment baris `image` di atas.]
    // TODO: Ensure this diagram matches the flow defined in Reno's proposal if authentication logic is shared.
    ],
    caption: [Activity Diagram Proses Login],
  ) <fig:activity_login>

  ==== _Entity Relationship Diagram_ (ERD)
  ERD memodelkan struktur basis data dan relasi antar tabel yang digunakan untuk menyimpan data pengguna, kuesioner, dan jawaban.

  // TODO: Masukkan gambar ERD Anda di sini
  // Simpan gambar sebagai: resources/images/erd.png
  #figure(
    // image("../resources/images/erd.png", width: 90%),
    rect(width: 90%, height: 8cm, fill: luma(240), stroke: 1pt + luma(180))[
      #align(
        center + horizon,
      )[*PLACEHOLDER: Entity Relationship Diagram* \ Simpan gambar di `resources/images/erd.png` \ lalu uncomment baris `image` di atas.]
    ],
    caption: [Entity Relationship Diagram (ERD)],
  ) <fig:erd>

  ==== Desain Antarmuka (_Interface Design_)
  Desain antarmuka dirancang menggunakan _Figma_ dengan pendekatan _Atomic Design_ untuk memastikan konsistensi komponen visual.

  // TODO: Masukkan gambar Mockup UI Utama Anda di sini
  // Simpan gambar sebagai: resources/images/ui_dashboard.png
  #figure(
    // image("../resources/images/ui_dashboard.png", width: 90%),
    rect(width: 90%, height: 6cm, fill: luma(240), stroke: 1pt + luma(180))[
      #align(
        center + horizon,
      )[*PLACEHOLDER: Mockup Dashboard Alumni* \ Simpan gambar di `resources/images/ui_dashboard.png` \ lalu uncomment baris `image` di atas.]
    ],
    caption: [Rancangan Antarmuka Dashboard Alumni],
  ) <fig:ui_dashboard>

  === Implementasi (_Implementation_)
  Tahap implementasi merupakan proses penerjemahan desain menjadi kode program.

  ==== Pembuatan Komponen (_Slicing_)
  Antarmuka yang telah didesain di Figma dikonversi menjadi komponen _Blade_ menggunakan _Tailwind CSS_. Struktur komponen dibagi menjadi _atoms_ (tombol, input), _molecules_ (form group), dan _organisms_ (navbar, card) untuk memudahkan penggunaan ulang (_reusability_).

  ==== Integrasi Logika (_Logic Integration_)
  Logika bisnis diimplementasikan menggunakan _Laravel Livewire_. Setiap komponen antarmuka yang membutuhkan interaksi (seperti formulir kuesioner) dihubungkan dengan _Class Component_ Livewire yang menangani _state management_, validasi input, dan komunikasi dengan basis data secara _real-time_ tanpa memuat ulang halaman.

  ==== Manajemen Keadaan (_State Management_)
  Untuk interaksi yang bersifat sementara di sisi klien (seperti _toggle_ menu, modal dialog), digunakan _Alpine.js_ karena ringan dan terintegrasi baik dengan Livewire.

  === Pengujian (_Testing_)
  Pengujian dilakukan untuk memastikan sistem bebas dari kesalahan dan memenuhi kebutuhan pengguna.
  + *Unit Testing*: Menguji fungsi-fungsi kecil secara terisolasi menggunakan PHPUnit.
  + *User Acceptance Testing (UAT)*: Melibatkan pengguna asli untuk memvalidasi alur bisnis.

  // ===========================================================================
  // 3.4 JADWAL PENELITIAN
  // ===========================================================================
  == Jadwal Penelitian

  Penelitian ini direncanakan selesai dalam waktu 4-5 bulan.

  #figure(
    table(
      columns: (auto, 2fr, 1fr, 1fr, 1fr, 1fr, 1fr),
      align: (center, left, center, center, center, center, center),
      table.header([*No*], [*Kegiatan*], [*Bulan 1*], [*Bulan 2*], [*Bulan 3*], [*Bulan 4*], [*Bulan 5*]),

      [1], [Studi Literatur], [X], [], [], [], [],
      [2], [Analisis Kebutuhan & Desain], [X], [X], [], [], [],
      [3], [Implementasi Frontend], [], [X], [X], [], [],
      [4], [Integrasi Sistem], [], [], [X], [X], [],
      [5], [Pengujian (UAT)], [], [], [], [X], [],
      [6], [Penyusunan Laporan], [], [], [X], [X], [X],
    ),
    caption: "Rencana Jadwal Penelitian",
  ) <tabel-jadwal>
]

// ============================================================================
// // DAFTAR PUSTAKA
// // ============================================================================
//
// =============================================================================
#bibliography-section(bibliography(
  "references.bib",
  style: "template/harvard-cite-them-right-indonesia.csl",
  title: none,
))

