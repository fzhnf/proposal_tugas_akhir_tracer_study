// LEARNING & STUDY APPROACH:
// 1. UNDERSTAND THE DOMAIN: Study BAN-PT LKPS format, Kemendikti reporting requirements
// 3. STUDY DATA VISUALIZATION: Chart.js, Livewire Charts, Dashboard UX patterns
// 4. BENCHMARKING: Look at 
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
  penguji-1: "Bowo Nugroho, S.Kom., M.Eng.",
  penguji-2: "Gusti Ahmad Fanshuri Alfarisy, S.Kom., M.Kom. Ph.D.",
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
  #align(center)[*ABSTRAK*]
  \
  Pelaksanaan _tracer study_ di Institut Teknologi Kalimantan saat ini menghadapi kendala teknis fundamental, di mana antarmuka pengisian kuesioner pada sistem eksisting masih bersifat statis dan kaku. Kondisi ini mengakibatkan pengalaman pengguna (_User Experience_) yang kurang optimal, khususnya pada perangkat _mobile_, serta tidak adanya visualisasi data yang _real-time_ bagi pengelola. Hal ini berpotensi menurunkan tingkat partisipasi alumni dalam mengisi kuesioner dan menyulitkan Unit Penunjang Akademik (UPA) Pengembangan Karier dan Kewirausahaan dalam memantau capaian lulusan secara cepat. Proposal tugas akhir ini bertujuan untuk merancang dan membangun antarmuka (_frontend_) sistem tracer study yang adaptif dan responsif dengan menerapkan model pengembangan _Waterfall Iterative_ dan metode _User Centered Design_ (UCD). Konsep desain utama berfokus pada mekanisme _Dynamic Form Rendering_ yang mampu menerjemahkan struktur pertanyaan dari basis data menjadi antarmuka interaktif secara otomatis, serta penyediaan _dashboard_ analitik yang informatif. Sistem ini dikembangkan menggunakan framework Laravel Livewire dengan pendekatan _Component-Based_ dan Tailwind CSS untuk menjamin konsistensi desain serta responsivitas di berbagai perangkat. Metode implementasi dilakukan secara bertahap mulai dari analisis kebutuhan pengguna, perancangan prototipe UI/UX, implementasi kode program, hingga pengujian fungsional dan kegunaan. Secara fungsional, pengembangan ini berpotensi meningkatkan kenyamanan responden melalui antarmuka yang intuitif dan meminimalisir beban kognitif saat pengisian, sehingga diharapkan dapat mendongkrak _response rate_ alumni. Selain itu, fitur visualisasi data yang interaktif memberikan kemudahan bagi manajemen ITK dalam mengevaluasi profil lulusan sesuai standar akreditasi BAN-PT dengan lebih efisien.

  Kata kunci: _Tracer Study_, _Frontend_, _Waterfall Iterative_, _User Centered Design_, Laravel Livewire
]

#abstract-en(
  keywords: ("tracer study", "frontend", "waterfall iterative", "user centered design"),
)[

  #align(center)[*ABSTRACT*]
  \
  _The implementation of tracer studies at Institut Teknologi Kalimantan currently faces fundamental technical constraints, where the questionnaire interface in the existing system remains static and rigid. This condition results in suboptimal User Experience (UX), particularly on mobile devices, and a lack of real-time data visualization for administrators. This potentially lowers alumni participation rates in completing questionnaires and hinders the Career Development and Entrepreneurship Unit (UPA) in monitoring graduate achievements promptly. This final project proposal aims to design and build an adaptive and responsive tracer study frontend system by applying the Waterfall Iterative development model and User Centered Design (UCD) method. The main design concept focuses on a Dynamic Form Rendering mechanism capable of automatically translating question structures from the database into interactive interfaces, as well as providing an informative analytic dashboard. The system is developed using the Laravel Livewire framework with a Component-Based approach and Tailwind CSS to ensure design consistency and responsiveness across various devices. The implementation method is carried out in stages, starting from user requirement analysis, UI/UX prototype design, code implementation, to functional and usability testing. Functionally, this development has the potential to improve respondent comfort through an intuitive interface that minimizes cognitive load during completion, thereby expected to boost alumni response rates. Furthermore, interactive data visualization features provide ease for ITK management in evaluating graduate profiles according to BAN-PT accreditation standards more efficiently._

  _Keywords: Tracer Study, Frontend, Waterfall Iterative, User Centered Design, Laravel Livewire_
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
  Selain kendala di sisi manajemen data, permasalahan signifikan juga ditemukan pada sisi antarmuka pengguna (_frontend_). Tampilan kuesioner yang ada saat ini bersifat kaku (_rigid_) dan kurang responsif saat diakses melalui perangkat berbasis _mobile_, padahal mayoritas alumni mengakses sistem menggunakan _smartphone_. Hal ini memicu _survey fatigue_ atau kelelahan responden akibat navigasi yang membingungkan dan beban kognitif yang tinggi saat mengisi formulir yang panjang.
  
  Lebih lanjut, tidak adanya umpan balik visual yang interaktif serta absennya _dashboard_ pemantauan yang _real-time_ menyulitkan pihak manajemen dalam mendapatkan gambaran cepat mengenai progres pengisian tracer study. Keterbatasan visualisasi data ini menghambat proses pengambilan keputusan strategis yang seharusnya didasarkan pada data terkini.

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
  == Rumusan Masalah dan/atau Obyek yang Dirancang

  Berdasarkan latar belakang di atas, rumusan masalah dalam penelitian ini adalah:
  // + Bagaimana merancang antarmuka pengguna (_User Interface_) sistem tracer study yang responsif dan meminimalkan beban kognitif responden?
  // saya hapus
  + Bagaimana mengimplementasikan logika formulir dinamis pada sisi _client-side_ untuk mengakomodasi struktur pertanyaan yang bervariasi antar program studi?
  + Bagaimana membangun dashboard analitik interaktif yang dapat memvisualisasikan data capaian lulusan secara _real-time_ bagi manajemen ITK?

  == Tujuan

  Tujuan dari penelitian tugas akhir ini adalah:
  + Menghasilkan rancangan antarmuka sistem tracer study yang menerapkan prinsip _usability_ untuk meningkatkan pengalaman pengguna.
  + Membangun modul _frontend_ yang mampu me-render formulir dinamis berdasarkan skema data yang dikirim oleh backend.
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
  + Implementasi menggunakan Laravel Livewire untuk interaktivitas antarmuka dan Tailwind CSS untuk tata letak responsif.
  + Mencakup halaman _landing page_, _wizard_ pengisian kuesioner dinamis, dan dashboard visualisasi data, dan _form editor page_.
  + Pengujian tampilan terbatas pada hasil UAT.


  // ===========================================================================
  // 1.5 MANFAAT PENELITIAN
  // ===========================================================================
  == Manfaat
  Manfaat yang diharapkan dari penelitian ini adalah:
  + Manfaat Akademis
    Memberikan kontribusi dalam pengembangan studi terkait perancangan
    dan pengembangan sistem backend tracer study dengan manajemen
    kuesioner, khususnya pada konteks perguruan tinggi yang perlu
    menyesuaikan instrumen tracer study terhadap perubahan regulasi dan
    kebutuhan data.
  + Manfaat Praktis bagi Pengelola Sistem
    Membantu admin atau pengelola tracer study dalam mengelola struktur
    dan konten kuesioner secara lebih mandiri tanpa ketergantungan tinggi
    pada pengembang, sehingga penyesuaian instrumen dapat dilakukan
    dengan lebih cepat dan terkontrol.
  + Manfaat Praktis bagi Alumni
    Memudahkan alumni sebagai responden dalam mengisi kuesioner tracer
    study melalui antarmuka pengisian yang lebih terstruktur, konsisten, dan
    dapat diakses kapan saja selama periode pengisian berlangsung.
  // + *Bagi Alumni*: Memberikan pengalaman pengisian kuesioner yang lebih mudah, cepat, dan dapat dilakukan melalui perangkat seluler dengan nyaman.
  // + *Bagi Institusi (ITK)*: Tersedianya dashboard data yang *real-time* memudahkan pimpinan dan program studi dalam memantau capaian lulusan dan menyusun strategi perbaikan kurikulum.
  // + *Bagi Tim Pengembang Selanjutnya*: Tersedianya dokumentasi antarmuka komponen (_component library_) yang dapat digunakan kembali untuk pengembangan modul lain di masa depan.

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
    "/resources/images/diagram alir penelitian.png",
    caption: [Diagram Alir Penelitian Tugas Akhir],
    width: 65%,
  ) <fig:kerangka_penelitian>

  @fig:kerangka_penelitian menggambarkan kerangka tugas akhir yang menerapkan metode pengembangan _Waterfall Iterative_. Berbeda dengan model _waterfall_ klasik yang kaku, pendekatan ini memodifikasi alur linear dengan menambahkan mekanisme umpan balik yang memungkinkan perbaikan dilakukan ke tahap-tahap sebelumnya jika ditemukan ketidaksesuaian.

  Proses penelitian diawali dengan tahap Studi Literatur dan Identifikasi Masalah untuk membangun landasan teori serta merumuskan urgensi penelitian. Selanjutnya, masuk ke tahapan inti pengembangan sistem yang terdiri dari empat fase utama:
  1. *Analisis Kebutuhan*: Tahap pengumpulan dan pendefinisian seluruh kebutuhan fungsional maupun non-fungsional yang diperlukan oleh sistem tracer study, khususnya pada aspek antarmuka pengguna.
  2. *Perancangan Desain Antarmuka*: Pembuatan rancangan visual, struktur komponen, dan alur interaksi pengguna berdasarkan analisis kebutuhan yang telah disepakati.
  3. *Implementasi*: Tahap penerjemahan desain ke dalam kode program menggunakan framework Laravel Livewire dan Tailwind CSS.
  4. *Testing*: Pengujian sistem untuk memastikan fungsionalitas berjalan sesuai rencana dan bebas dari galat.

  Model _iterative waterfall_ adalah pengembangan dari model _waterfall_ yang  memungkinkan kesalahan yang ditemukan pada tahap yang lebih akhir dapat dikoreksi pada tahap yang menjadi sumber permasalahan tersebut. Setelah seluruh fungsi utama dinyatakan valid pada tahap pengujian, alur pengembangan dalam penelitian ini kemudian diteruskan ke tahap analisis hasil dan diskusi, dan diakhiri dengan penarikan kesimpulan serta penyusunan saran.
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
  // TRACER STUDY
  // ===========================================================================
  == Tracer Study
Keberhasilan perguruan tinggi salah satunya ditentukan oleh aspek
relevansi. Pada aspek ini, perguruan tinggi berperan sebagai penyelenggara
pendidikan yang mampu mencetak lulusan dengan daya saing tinggi untuk
menghadapi dunia kerja. Tracer Study digunakan sebagai instrumen untuk
menelusuri keterkaitan antara input pendidikan, proses pembelajaran, output yang
dihasilkan, serta capaian hasil pendidikan @fitriani2024tracer. 


  _Tracer Study_ memenuhi kebutuhan nasional melalui kebijakan Kementerian
  Pendidikan seperti Surat Edaran Dirjen Belmawa No. 471/B/SE/VII/2017 dan
  Permendikbud No. 3 Tahun 2020, yang mewajibkan perguruan tinggi menyediakan
  data akurat tentang transisi lulusan ke dunia kerja untuk evaluasi relevansi
  pendidikan serta syarat akreditasi BAN-PT. Secara internal, perguruan tinggi
  memanfaatkannya sebagai umpan balik untuk perbaikan kurikulum, pengukuran
  _outcome_ seperti tingkat penyerapan kerja, penguatan jaringan alumni, dan
  peningkatan mutu pembelajaran berkelanjutan.

  _Tracer Study_ merupakan salah satu sarana yang digunakan untuk menelusuri
  informasi alumni dan mampu menyediakan berbagai informasi yang bermanfaat
  seperti data pribadi, riwayat pendidikan ataupun informasi riwayat pekerjaan
  @hasan2022rancang.

  Di Institut Teknologi Kalimantan (ITK), pelaksanaan _tracer study_ sejalan
  dengan mandat yang tertuang dalam Peraturan Menteri Pendidikan, Kebudayaan,
  Riset, dan Teknologi Republik Indonesia Nomor 41 Tahun 2024 tentang
  Organisasi dan Tata Kerja Institut Teknologi Kalimantan. Data dari portal
  _tracer study_ Kemendikti menunjukkan bahwa ITK secara rutin melaporkan data
  lulusan ke sistem nasional.

  === Standar Akreditasi BAN-PT
  Mengacu pada Lampiran Peraturan BAN-PT Nomor 5 Tahun 2019 tentang Instrumen Akreditasi Program Studi @banpt2019, ketersediaan data _tracer study_ merupakan syarat mutlak dalam penyusunan Laporan Kinerja Program Studi (LKPS). Sistem yang dikembangkan harus mampu menghasilkan data yang sesuai dengan format tabel berikut:

  + *Waktu Tunggu Lulusan (Tabel 8.d.1)* \
    Instrumen ini mengukur durasi waktu tunggu lulusan untuk mendapatkan pekerjaan pertama. Data diklasifikasikan menjadi tiga kategori utama untuk jenjang Sarjana: < 6 bulan, 6-18 bulan, dan > 18 bulan. Sistem harus mampu mengakomodasi input tanggal lulus dan tanggal mulai bekerja untuk mengkalkulasi durasi ini secara otomatis.
    #figure(
      table(
        columns: (auto, auto, auto, auto, auto, auto),
        align: center + horizon,
        table.cell(rowspan: 2)[*Tahun Lulus*],
        table.cell(rowspan: 2)[*Jumlah Lulusan*],
        table.cell(rowspan: 2)[*Jumlah Lulusan \ yang Terlacak*],
        table.cell(colspan: 3)[*Jumlah Lulusan Terlacak dengan \ Waktu Tunggu Mendapatkan Pekerjaan*],
        [*WT < 6 bulan*], [*6 ≤ WT ≤ 18 bulan*], [*WT > 18 bulan*],
        [1], [2], [3], [4], [5], [6],
        [TS-4], [], [], [], [], [],
        [TS-3], [], [], [], [], [],
        [TS-2], [], [], [], [], []
      ),
      caption: [Tabel 8.d.1 Waktu Tunggu Lulusan (Program Sarjana)]
    ) <banpt_8d1>

  + *Kesesuaian Bidang Kerja (Tabel 8.d.2)* \
    Mengklasifikasikan pekerjaan lulusan berdasarkan relevansi dengan profil lulusan program studi menjadi tiga tingkat:
    - *Rendah*: Jenis pekerjaan/posisi tidak sesuai atau kurang sesuai.
    - *Sedang*: Jenis pekerjaan/posisi cukup sesuai.
    - *Tinggi*: Jenis pekerjaan/posisi sesuai atau sangat sesuai.
    #figure(
      table(
        columns: (auto, auto, auto, auto, auto, auto),
        align: center + horizon,
        table.cell(rowspan: 2)[*Tahun Lulus*],
        table.cell(rowspan: 2)[*Jumlah Lulusan*],
        table.cell(rowspan: 2)[*Jumlah Lulusan \ yang Terlacak*],
        table.cell(colspan: 3)[*Jumlah Lulusan Terlacak dengan \ Tingkat Kesesuaian Bidang Kerja*],
        [*Rendah* #super("1)")], [*Sedang* #super("2)")], [*Tinggi* #super("3)")],
        [1], [2], [3], [4], [5], [6],
        [TS-4], [], [], [], [], [],
        [TS-3], [], [], [], [], [],
        [TS-2], [], [], [], [], []
      ),
      caption: [Tabel 8.d.2 Kesesuaian Bidang Kerja Lulusan]
    ) <banpt_8d2>
  
  + *Tempat Kerja Lulusan (Tabel 8.e.1)* \
    Mengidentifikasi jangkauan wilayah tempat kerja lulusan yang terbagi menjadi:
    - Lokal/Wilayah/Berwirausaha tidak berizin
    - Nasional/Berwirausaha berizin
    - Multinasional/Internasional
    #figure(
      table(
        columns: (auto, auto, auto, auto, auto, auto),
        align: center + horizon,
        table.cell(rowspan: 2)[*Tahun Lulus*],
        table.cell(rowspan: 2)[*Jumlah \ Lulusan*],
        table.cell(rowspan: 2)[*Jumlah Lulusan \ yang Terlacak*],
        table.cell(colspan: 3)[*Jumlah Lulusan Terlacak yang Bekerja berdasarkan \ Tingkat/Ukuran Tempat Kerja/Berwirausaha*],
        [*Lokal/Wilayah/ \ Berwirausaha tidak Berizin*], [*Nasional/ \ Berwirausaha Berizin*], [*Multinasional/ \ Internasional*],
        [1], [2], [3], [4], [5], [6],
        [TS-4], [], [], [], [], [],
        [TS-3], [], [], [], [], [],
        [TS-2], [], [], [], [], [],
        [*Jumlah*], [], [], [], [], []
      ),
      caption: [Tabel 8.e.1 Tempat Kerja Lulusan]
    ) <banpt_8e1>

  + *Kepuasan Pengguna (Tabel 8.e.2)* \
    Menilai kepuasan atasan terhadap kinerja lulusan pada 7 aspek kompetensi utama: (1) Etika, (2) Keahlian pada bidang ilmu, (3) Kemampuan berbahasa asing, (4) Penggunaan teknologi informasi, (5) Kemampuan berkomunikasi, (6) Kerjasama tim, dan (7) Pengembangan diri. Penilaian menggunakan skala Likert: Sangat Baik, Baik, Cukup, dan Kurang.
    #figure(
      table(
        columns: (auto, 3fr, auto, auto, auto, auto, 2fr),
        align: center + horizon,
        table.cell(rowspan: 2)[*No.*],
        table.cell(rowspan: 2)[*Jenis Kemampuan*],
        table.cell(colspan: 4)[*Tingkat Kepuasan Pengguna (%)*],
        table.cell(rowspan: 2)[*Rencana Tindak Lanjut \ oleh UPPS/PS*],
        [*Sangat \ Baik*], [*Baik*], [*Cukup*], [*Kurang*],
        [1], [2], [3], [4], [5], [6], [7],
        [1], align(left)[Etika], [], [], [], [], [],
        [2], align(left)[Keahlian pada bidang ilmu \ (kompetensi utama)], [], [], [], [], [],
        [3], align(left)[Kemampuan berbahasa asing], [], [], [], [], [],
        [4], align(left)[Penggunaan teknologi informasi], [], [], [], [], [],
        [5], align(left)[Kemampuan berkomunikasi], [], [], [], [], [],
        [6], align(left)[Kerjasama tim], [], [], [], [], [],
        [7], align(left)[Pengembangan diri], [], [], [], [], []
      ),
      caption: [Tabel 8.e.2 Kepuasan Pengguna]
    ) <banpt_8e2>

  // ===========================================================================
  // WEB-BASED INFORMATION SYSTEMS & FRONTEND ARCHITECTURE
  // ===========================================================================
  
  == Sistem Informasi dan Arsitektur Web
  Menurut @zwass2026informationsystem, sistem informasi adalah sebuah rangkaian
  komponen terintegrasi untuk mengumpulkan, menyimpan, dan memproses data, serta
  menyediakan informasi, pengetahuan, dan produk digital. Perusahaan dan
  organisasi lain bergantung pada sistem informasi untuk melaksanakan dan
  mengelola operasional mereka. sistem informasi sering kali diwujudkan melalui web
  system yang scalable dan accessible secara global. 

  aplikasi web kini banyak yang menuju arsitektur Single Page Application
  (SPA), di mana aplikasi memuat satu dokumen HTML tunggal dan memperbarui
  konten halaman secara dinamis saat pengguna berinteraksi, tanpa memuat ulang
  seluruh halaman. Hal ini memberikan pengalaman yang cepat dan mulus,
  menyerupai aplikasi desktop. 
  Framework modern seperti Laravel Livewire mampu menyederhanakan pengelolaan
  state antara server dan klien tanpa kompleksitas frontend yang berlebihan.

  // ===========================================================================
  // UI/UX DESIGN
  // ===========================================================================
  == Antarmuka Pengguna (UI) dan Pengalaman Pengguna (UX)

  Evolusi desain web telah beralih dari pertukaran informasi satu arah pada Web
  1.0 ke konten yang dihasilkan pengguna dan interaktif pada Web 2.0, dan kini
  bergerak menuju Web 3.0 yang bertujuan untuk pengalaman online yang personal
  dan cerdas. Dalam konteks ini, _User Interface_ (UI) dan _User Experience_
  (UX) memainkan peran krusial dalam interaksi produk, terutama pada aplikasi. UX
  mencakup semua interaksi yang dilakukan pengguna dengan produk, menyoroti
  pentingnya penelitian untuk mengumpulkan umpan balik tentang pengalaman
  pengguna, sehingga dapat mengidentifikasi area yang perlu ditingkatkan.

  Misalnya, dalam aplikasi pemesanan pakaian online, UX melibatkan perjalanan
  pengguna yang lancar dari menjelajahi produk hingga menyelesaikan pembelian,
  memastikan kepuasan melalui keterlibatan yang efektif. Di sisi lain, UI
  berfokus pada komponen visual yang digunakan pengguna untuk berinteraksi,
  seperti warna, tipografi, dan tata letak. Ini berkaitan dengan aspek estetika
  yang memfasilitasi kegunaan, termasuk penempatan elemen fungsional seperti
  tombol di halaman web.

  Selain itu, desain interaksi menekankan tindakan pengguna—apa yang dapat mereka
  lakukan di layar (ketuk, geser, klik) dan hasil selanjutnya yang membantu
  mereka mencapai tujuan mereka. Aspek desain ini berbeda dari desain visual,
  karena berfokus pada alur tugas dan urutan pengalaman daripada pilihan gaya. 

  Desain Antarmuka, di sisi lain, berfokus pada estetika visual dan tata letak
  elemen, memastikan hierarki yang kohesif dan interkonektivitas. Desainer
  menggunakan kreativitas mereka dalam memilih font, skema warna, dan elemen
  grafis, yang berkontribusi pada pengalaman pengguna secara keseluruhan. Pada
  akhirnya, baik UI maupun UX merupakan bagian integral dari proses desain,
  memastikan bahwa produk tidak hanya menarik secara visual tetapi juga
  fungsional dan ramah pengguna @sharma2021study.

  === _User Centered Design_ (UCD)
  Desain Berpusat pada Pengguna (UCD) adalah pendekatan pengembangan produk yang memprioritaskan pengalaman pengguna di atas segalanya. Tujuannya adalah untuk meningkatkan desain UI guna memaksimalkan kepuasan pengguna dan memastikan produk memenuhi kebutuhan mereka secara efektif. Proses UCD mencakup beberapa langkah kritis, termasuk interaksi langsung dengan pengguna akhir untuk mengumpulkan wawasan tentang kebutuhan mereka, pembuatan prototipe UI, dan pengujian berulang berdasarkan umpan balik pengguna.

  Metodologi ini tidak terbatas pada perangkat lunak; ia berlaku untuk produk apa pun yang dapat dipasarkan, terutama dalam bidang perangkat keras, di mana produk yang sukses sering kali muncul dari pemahaman mendalam tentang kebutuhan dan preferensi pengguna. Proses UCD melibatkan penelitian pengguna yang komprehensif untuk mengidentifikasi dan menganalisis persyaratan, diikuti dengan pengembangan desain UI yang sesuai dengan ekspektasi pengguna. Validasi antarmuka melalui pengujian berkelanjutan dan umpan balik pengguna merupakan bagian esensial dari proses ini, memastikan standar kegunaan dan pengalaman pengguna terpenuhi sepanjang fase desain, pengembangan, dan pengujian.

  UCD yang dibahas dalam dokumen ini menekankan desain tampilan dan fungsionalitas produk dari sudut pandang pengalaman pengguna (UX), dengan memasukkan aspek-aspek seperti Pengalaman Pengguna, Kemudahan Penggunaan, dan Interaksi Pengguna. Pembahasan ini mengasumsikan bahwa tim pengembangan telah dilatih dan diberi informasi yang cukup tentang integrasi pengalaman pengguna yang dijanjikan ke dalam proses pengembangan, sehingga memperkuat komitmen untuk memberikan pengalaman pengguna yang luar biasa di seluruh fase pengembangan produk @dhandapani2016integration.

  // ===========================================================================
  // MODEL VIEW CONTROLLER
  // ===========================================================================
  == Model View Controller (MVC)

  Menurut @lumba2021implementation, MVC membagi aplikasi menjadi 3 bagian: Model, View, Controller:
  + Model adalah kelas yang digunakan untuk mengimplementasikan logika domain
    data. Kelas-kelas ini digunakan untuk mengambil, menyisipkan, atau mengubah
    data ke dalam basis data yang terkait dengan aplikasi.
  + View digunakan untuk membuat antarmuka aplikasi. Pengguna berinteraksi
    dengan aplikasi menggunakan desain antarmuka.
  + Controller adalah kelas yang digunakan untuk merespons permintaan pengguna
    dan menghubungkannya dengan model.



  // ===========================================================================
  // DEVELOPMENT FRAMEWORK (LARAVEL & LIVEWIRE)
  // ===========================================================================
  == Framework Pengembangan

  === Laravel
  Laravel adalah kerangka kerja aplikasi web berbasis PHP dengan sintaks yang ekspresif dan elegan. Laravel mengikuti pola arsitektur _Model-View-Controller_ (MVC) yang memisahkan logika aplikasi, antarmuka pengguna, dan data. Keunggulan Laravel terletak pada ekosistemnya yang kuat, keamanan bawaan, dan kemudahan dalam membangun aplikasi skala besar @laravel.

  === Laravel Livewire
  Laravel Livewire adalah kerangka kerja _full-stack_ untuk Laravel yang memungkinkan pembangunan antarmuka dinamis tanpa meninggalkan kenyamanan PHP. Livewire memungkinkan pengembang untuk membuat komponen UI yang reaktif (seperti formulir dinamis dan pencarian _real-time_) tanpa kerumitan menulis JavaScript kompleks secara manual. Hal ini sangat relevan untuk pengembangan _tracer study_ yang membutuhkan interaktivitas tinggi pada formulir kuesioner @livewire.

  === Tailwind CSS
  Tailwind CSS adalah kerangka kerja CSS yang mengutamakan utilitas (_utility-first_). Berbeda dengan kerangka kerja UI tradisional seperti Bootstrap yang menyediakan komponen siap pakai, Tailwind menyediakan kelas-kelas utilitas tingkat rendah yang memungkinkan pengembang membangun desain kustom sepenuhnya tanpa meninggalkan HTML. Pendekatan ini mempercepat proses _styling_ dan memudahkan pembuatan desain responsif yang adaptif terhadap berbagai ukuran layar perangkat @tailwindcss.


  // ===========================================================================
  // SOFTWARE DEVELOPMENT METHOD
  // ===========================================================================
  == Metode Pengembangan Perangkat Lunak

  Model SDLC Air Terjun adalah proses pengembangan perangkat lunak berurutan di
  mana kemajuan dianggap mengalir secara bertahap ke bawah (seperti air terjun)
  melalui serangkaian fase yang harus dijalankan secara berurutan untuk
  berhasil mengembangkan perangkat lunak komputer. Awalnya, model Air Terjun
  diusulkan oleh Winston W. Royce pada tahun 1970 untuk menggambarkan praktik
  rekayasa perangkat lunak yang mungkin @bassil2012simulation. 
  Model waterfall esensinya terdiri dari lima fase, yaitu:
  + Fase analisis: juga dikenal sebagai Spesifikasi Persyaratan Perangkat Lunak
    (SRS), melibatkan dokumentasi tentang perilaku yang diharapkan dari
    perangkat lunak dan merumuskan _requirement_ fungsional dan
    non-fungsional berdasarkan _use case_.
    + _functional requirements_
      menggambarkan interaksi pengguna dengan perangkat lunak melalui kasus
      penggunaan, mencakup aspek seperti tujuan, cakupan, fungsi, atribut,
      karakteristik pengguna, spesifikasi, persyaratan antarmuka, dan kebutuhan
      basis data. 
    + _Non-functional requirements_
      mencakup kriteria yang mengatur desain dan operasi perangkat lunak,
      termasuk keandalan, skalabilitas, keterujian, ketersediaan, kemudahan
      pemeliharaan, kinerja, dan standar kualitas.
  + Fase desain:  perencanaan dan pemecahan masalah untuk menciptakan solusi
    perangkat lunak dengan merumuskan algoritma, mendefinisikan arsitektur
    perangkat lunak, merancang skema basis data, serta merancang antarmuka
    pengguna dan struktur data.

  + Fase implementasi: _requirement_ dan spesifikasi desain diubah menjadi
    program fungsional, basis data, situs web, atau komponen perangkat lunak.
    Mencakup pemrograman dan kompilasi perangkat lunak, pengembangan basis data
    dan file terkait.
  + Fase _testing_: Dikenal dengan proses verifikasi dan validasi, fase ini
    memastikan solusi perangkat lunak sesuai dengan persyaratan asli sambil
    memenuhi tujuannya. Verifikasi menilai apakah output dari setiap fase
    pengembangan sesuai dengan kondisi awal, sementara validasi mengevaluasi
    perangkat lunak terhadap persyaratan yang ditentukan selama atau setelah
    pengembangan. Fase ini juga melibatkan debugging untuk mengidentifikasi dan
    memperbaiki bug dan gangguan sistem.
  + Fase _maintenance_: Setelah pengiriman dan implementasi perangkat lunak, fase
    ini melibatkan modifikasi dan penyempurnaan solusi untuk meningkatkan output
    dan memperbaiki kesalahan. Aktivitas pemeliharaan dapat mencakup penyesuaian
    perangkat lunak dengan lingkungan yang berubah, mengakomodasi kebutuhan
    pengguna baru, dan memperkuat keandalan perangkat lunak.

  Pada Awalnya, model _waterfall_ yang menjadi tradisional diusulkan oleh Winston
  W. Royce pada tahun 1970 untuk menggambarkan praktik rekayasa perangkat lunak
  yang mungkin @bassil2012simulation. Model Waterfall mendefinisikan beberapa
  fase berurutan yang harus diselesaikan satu per satu dan berpindah ke fase
  berikutnya hanya setelah fase sebelumnya selesai sepenuhnya.


  Model _waterfall_  iteratif adalah penyempurnaan dari model _waterfall_
  tradisional, yang mengatasi keterbatasannya dengan memungkinkan _feedback_ ke
  fase-fase berikutnya. Model ini mempertahankan fase-fase yang sama akan tetapi
  mengorganisasikannya ke dalam siklus yang dapat berulang, fokus utama adalah
  pada penyelesaian pekerjaan daripada hanya berfokus pada kualitasnya
  @kaur2015comparative. model Waterfall ini bersifat rekursif, artinya setiap
  fase dapat diulang tanpa henti hingga sempurna.  


  #gambar(

    "/resources/images/waterfall_model_illustration.png",
    caption: [Ilustrasi Model Waterfall @bassil2012simulation],
    width: 80%,
  ) <fig:waterfall_model>



  // ===========================================================================
  // TESTING (AUTOMATED & UAT)
  // ===========================================================================
  == Pengujian Perangkat Lunak
  untuk memverifikasi dan memvalidasi bahwa perangkat lunak yang dikembangkan
  memenuhi kebutuhan pengguna dan berfungsi sesuai dengan yang diharapkan.
  Pengujian ini dapat dilakukan melalui berbagai metode, termasuk pengujian
  otomatis dan pengujian penerimaan pengguna (_User Acceptance Testing_).


  === _Automated Testing_
  // unit test dan selenium
  _Unit test_ adalah proses pengujian unit program individu secara terpisah,
  unit umumnya diakui meliputi fungsi, prosedur, metode, dan bahkan kelas-kelas
  lengkap dalam pemrograman berorientasi objek. Sebuah unit program pada
  dasarnya adalah segmen kode, seperti fungsi atau metode, yang dapat dipanggil
  dari luar dan mungkin memanggil unit lain. Unit ini dirancang untuk memenuhi
  fungsi spesifik, memberikan tingkat abstraksi yang tidak selalu berhubungan
  langsung dengan fungsi tingkat sistem @naik2011software. 

  Alasan di balik pengujian unit program sebelum diintegrasikan dengan unit
  lain memiliki dua tujuan. Pertama, memisahkan proses pengujian memungkinkan
  atribusi yang tepat terhadap kesalahan yang ditemukan, memudahkan
  identifikasi dan koreksi masalah. Kedua, pengujian unit menghilangkan
  ketergantungan pada unit lain, memastikan bahwa unit tersebut telah diuji
  secara menyeluruh. Penting untuk memastikan bahwa setiap eksekusi independen
  dari sebuah unit menghasilkan hasil yang diharapkan, yang melibatkan
  pemeriksaan berbagai jalur eksekusi melalui unit tersebut. 

  === _User Acceptance Testing_ (UAT)
  Setelah tahap pengujian unit selesai, dilakukan pengujian penerimaan pengguna atau _User Acceptance Testing_ (UAT). UAT dilakukan untuk memvalidasi apakah sistem yang dibangun telah memenuhi kebutuhan pengguna akhir dan layak untuk digunakan dalam lingkungan operasional. Pengujian ini melibatkan perwakilan pengguna dari berbagai _role_ untuk memastikan alur kerja bisnis telah terakomodasi dengan baik.



  // ===========================================================================
  // UNIFIED MODELLING LANGUAGE
  // ===========================================================================
  == _Unified Modelling Language_ (UML)

  // #rect(fill: blue.lighten(90%), stroke: 1pt + blue, inset: 1em)[
  //   *INSTRUKSI:* Jelaskan UML (Unified Modeling Language).
  //   *Poin Utama:*
  //   - Bahasa standar untuk visualisasi desain sistem.
  //   - Digunakan untuk mendokumentasikan sistem berorientasi objek (OO).
  //   *Wajib Sitasi:* @mubarak2019
  // ]


  // ===========================================================================
  // BUSINESS PROCESS MODEL NOTATION
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
  // USE CASE DIAGRAM
  // ===========================================================================
  == _Use Case Diagram_

_Use case diagram_ merupakan diagram perilaku yang penting dalam  UML, berfungsi untuk menggambarkan persyaratan fungsional sistem perangkat lunak @fauzan2021different. 

Berdasarkan @fig:use-case-diagram-component, komponen diagram use case dibagi menjadi dua kategori utama:
    + Properti: Terdiri dari kumpulan label untuk Actor (aktor) dan Use Case (kasus penggunaan/fungsi).
    + Hubungan: Terdiri dari label hubungan antar komponen dalam diagram. Hubungan ini dibagi lagi menjadi tiga jenis yaitu:
        + Actor to actor: Hubungan antara satu aktor dengan aktor lainnya.
        + Actor to use case: Hubungan yang menunjukkan interaksi aktor dengan fungsi sistem.
        + Use case to use case: Hubungan antar fungsi di dalam sistem (seperti extend, include, atau generalization).

  #gambar(
    "/resources/images/use-case-diagram-component.png",
    caption: [komponen use case @fauzan2021different],
    width: 65%,
  ) <fig:use-case-diagram-component>


  #gambar(
    "/resources/images/use-case-diagram-example.png",
    caption: [contoh diagram _use case_ @fauzan2021different],
    width: 65%,
  ) <fig:use-case-diagram-example>


  // ===========================================================================
  // PENELITIAN TERDAHULU
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

      // [2],
      // [Fajrian et al. (2024) \ "Rancang Bangun Sistem Tracer Study Universitas Peradaban"],
      // [Unified Process],
      // [Sistem tracer study dengan fitur dasar. Celah: Antarmuka masih statis, belum ada dashboard analitik.],
      //
      [3],
      [Putri & Pakereng (2021) \ "Pengembangan Sistem Informasi Tracer Study Berbasis UCD"],
      [User Centered Design (UCD)],
      [Menerapkan pendekatan UCD dengan Laravel. Celah: Format ekspor belum sesuai standar BAN-PT.],

      [4],
      [Haliq et al. (2021) \ "Analisis Hasil E-Tracer Study 2019 pada Penerima Beasiswa ITK"],
      [Analisis Deskriptif],
      [Menganalisis data tracer study ITK. Celah: Pengumpulan data masih manual dengan tingkat partisipasi terbatas.],

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
//Commented-out content is actually GOOD - uncomment and complete it!
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


  === Konsep _Dynamic Form Rendering_
  Fitur ini dirancang untuk melengkapi modul "Manajemen Kuesioner" di sisi _backend_ (yang dikembangkan oleh mitra penelitian). Antarmuka formulir tidak digambarkan secara statis dalam kode HTML/Blade, melainkan dihasilkan secara otomatis (_rendered_) berdasarkan skema JSON yang diterima dari server.

  Mekanisme ini bekerja dengan langkah-langkah berikut:
  1.  *Schema Fetching*: Frontend mengambil konfigurasi kuesioner aktif yang berisi daftar pertanyaan, tipe input (teks, pilihan ganda, skala), dan aturan validasi.
  2.  *Component Mapping*: Sistem memetakan setiap tipe pertanyaan ke dalam komponen UI atomik yang sesuai. 
  3.  *State Binding*: Jawaban pengguna disimpan dalam objek reaktif sementara yang strukturnya mengikuti ID pertanyaan, memastikan data siap dikirim kembali ke server tanpa pemrosesan manual yang rumit.

  Pendekatan ini menjamin bahwa setiap perubahan pada struktur kuesioner oleh admin akan langsung terefleksi pada antarmuka pengguna tanpa perlu *deployment* ulang kode _frontend_.

  // CATATAN: Wireframe (Rancangan Tampilan) tidak ditempatkan di sini.
  // Bagian 3.1 fokus pada KONSEP dan LOGIKA sistem.
  // Wireframe akan ditempatkan di sub-bab 3.4 Desain Antarmuka.

  #figure(
    image("resources/images/arsitektur_desain_kuesioner.png", width: 90%),
    caption: [Arsitektur Desain Kuesioner Dinamis],
  ) <fig:arsitektur_kuesioner>

  === Konsep _Interactive Dashboard_
  Selain pengumpulan data, sistem ini juga berfokus pada penyajian data. *Dashboard* dirancang untuk tidak sekadar menampilkan tabel angka, tetapi menyajikan wawasan (_insights_) yang dapat ditindaklanjuti.
  
  Visualisasi data diimplementasikan menggunakan pustaka grafik berbasis JavaScript (seperti ApexCharts atau Chart.js) yang dibungkus dalam komponen Livewire. Hal ini memungkinkan grafik untuk diperbarui secara dinamis tanpa _reload_ halaman ketika pengguna mengubah filter (misalnya: filter berdasarkan Tahun Lulus atau Program Studi).



  // ===========================================================================
  // 3.2 SPESIFIKASI TEKNIS
  // ===========================================================================
  == Spesifikasi Teknis Perangkat Lunak
  Perangkat lunak yang digunakan meliputi:
  + Sistem Operasi: Linux / Windows 11
  + Bahasa Pemrograman: PHP 8.2 & JavaScript (ES6+)
  + Framework Backend: Laravel 12
  + Framework Frontend: Laravel Livewire & Tailwind CSS
  + Basis Data: MySQL
  + Desain UI/UX: Figma
  + Code Editor: Visual Studio Code / Neovim
  + Version Control: Git

  // ===========================================================================
  // 3.3 TAHAPAN PEMBUATAN PROTOTIPE
  // ===========================================================================
  == Tahapan Pelaksanaan Penelitian
  Penelitian ini dilaksanakan menggunakan metode _Waterfall Iteratif_. Tahapan-tahapan yang dilakukan adalah sebagai berikut:

  === Analisis Kebutuhan
  Pada tahap ini dilakukan identifikasi kebutuhan fungsional dan non-fungsional sistem berdasarkan studi literatur dan observasi awal.

  ==== Kebutuhan Fungsional (_User Stories_)
  Berikut adalah daftar kebutuhan fungsional sistem yang dijabarkan dalam bentuk _User Stories_ untuk memastikan setiap fitur dikembangkan berdasarkan perspektif pengguna akhir. Daftar ini diselaraskan dengan spesifikasi sistem backend mitra untuk menjamin interoperabilitas total.

  #figure(
    table(
      columns: (auto, 3fr, 1fr),
      align: (center, left, center),
      table.header([*ID*], [*User Story*], [*Aktor*]),

      // Admin Stories
      [US-01], [Sebagai Admin, saya ingin mengelola akses user ke sistem.], [Admin],
      [US-02], [Sebagai Admin, saya ingin melihat unit kerja serta pejabat.], [Admin],

      // Tim Tracer - Manajemen Kuesioner
      [US-03], [Sebagai Tim Tracer, saya ingin melihat daftar kuesioner.], [Tim Tracer],
      [US-04], [Sebagai Tim Tracer, saya ingin menambahkan kuesioner baru.], [Tim Tracer],
      [US-05], [Sebagai Tim Tracer, saya ingin mengubah data kuesioner.], [Tim Tracer],
      [US-06], [Sebagai Tim Tracer, saya ingin menghapus kuesioner.], [Tim Tracer],
      [US-07], [Sebagai Tim Tracer, saya ingin menduplikat kuesioner.], [Tim Tracer],
      [US-08], [Sebagai Tim Tracer, saya ingin melakukan pratinjau (preview).], [Tim Tracer],
      [US-09], [Sebagai Tim Tracer, saya ingin mengatur aktivasi kuesioner.], [Tim Tracer],
      
      // Tim Tracer - Monitoring & Data
      [US-10], [Sebagai Tim Tracer, saya ingin memantau progres pengisian.], [Tim Tracer],
      [US-11], [Sebagai Tim Tracer, saya ingin memfilter data pengisian.], [Tim Tracer],
      
      // Tim Tracer - Struktur Halaman
      [US-12], [Sebagai Tim Tracer, saya ingin melihat daftar halaman kuesioner.], [Tim Tracer],
      [US-13], [Sebagai Tim Tracer, saya ingin menambah halaman kuesioner.], [Tim Tracer],
      [US-14], [Sebagai Tim Tracer, saya ingin mengubah halaman kuesioner.], [Tim Tracer],
      [US-15], [Sebagai Tim Tracer, saya ingin menghapus halaman kuesioner.], [Tim Tracer],
      
      // Tim Tracer - Struktur Section
      [US-16], [Sebagai Tim Tracer, saya ingin melihat detail section.], [Tim Tracer],
      [US-17], [Sebagai Tim Tracer, saya ingin menambah section baru.], [Tim Tracer],
      [US-18], [Sebagai Tim Tracer, saya ingin mengubah section kuesioner.], [Tim Tracer],
      [US-19], [Sebagai Tim Tracer, saya ingin menghapus section kuesioner.], [Tim Tracer],
      [US-20], [Sebagai Tim Tracer, saya ingin mengubah urutan section.], [Tim Tracer],
      [US-21], [Sebagai Tim Tracer, saya ingin mengatur logic tampilan section.], [Tim Tracer],
      
      // Tim Tracer - Manajemen Pertanyaan
      [US-22], [Sebagai Tim Tracer, saya ingin melihat detail pertanyaan.], [Tim Tracer],
      [US-23], [Sebagai Tim Tracer, saya ingin menambah pertanyaan baru.], [Tim Tracer],
      [US-24], [Sebagai Tim Tracer, saya ingin mengubah pertanyaan.], [Tim Tracer],
      [US-25], [Sebagai Tim Tracer, saya ingin menghapus pertanyaan.], [Tim Tracer],
      [US-26], [Sebagai Tim Tracer, saya ingin mengubah urutan pertanyaan.], [Tim Tracer],
      [US-27], [Sebagai Tim Tracer, saya ingin mengatur logic pertanyaan.], [Tim Tracer],
      
      // Tim Tracer - Ekspor & Data Lanjut
      [US-28], [Sebagai Tim Tracer, saya ingin melihat hasil pengisian responden.], [Tim Tracer],
      [US-29], [Sebagai Tim Tracer, saya ingin mengekspor data responden.], [Tim Tracer],
      [US-30], [Sebagai Tim Tracer, saya ingin mengekspor handout kuesioner (Raw).], [Tim Tracer],
      [US-31], [Sebagai Tim Tracer, saya ingin ekspor data format KEMENDIKTI.], [Tim Tracer],
      [US-32], [Sebagai Tim Tracer, saya ingin mengimpor handout kuesioner.], [Tim Tracer],
      [US-33], [Sebagai Tim Tracer, saya ingin menambah jenis kuesioner.], [Tim Tracer],
      [US-34], [Sebagai Tim Tracer, saya ingin mengubah jenis kuesioner.], [Tim Tracer],
      [US-35], [Sebagai Tim Tracer, saya ingin menghapus jenis kuesioner.], [Tim Tracer],
      [US-36], [Sebagai Tim Tracer, saya ingin mapping pertanyaan ke standar eksternal.], [Tim Tracer],
      
      // Tim Prodi
      [US-37], [Sebagai Tim Prodi, saya ingin melihat pertanyaan khusus prodi.], [Tim Prodi],
      [US-38], [Sebagai Tim Prodi, saya ingin menambah pertanyaan khusus prodi.], [Tim Prodi],
      [US-39], [Sebagai Tim Prodi, saya ingin mengubah pertanyaan khusus prodi.], [Tim Prodi],
      [US-40], [Sebagai Tim Prodi, saya ingin menghapus pertanyaan khusus prodi.], [Tim Prodi],
      [US-41], [Sebagai Tim Prodi, saya ingin mengubah urutan pertanyaan prodi.], [Tim Prodi],
      [US-42], [Sebagai Tim Prodi, saya ingin mengatur logic pertanyaan prodi.], [Tim Prodi],
      [US-43], [Sebagai Tim Prodi, saya ingin memantau laporan progres alumni prodi.], [Tim Prodi],
      [US-44], [Sebagai Tim Prodi, saya ingin impor hasil responden (Handout).], [Tim Prodi],
      [US-45], [Sebagai Tim Prodi, saya ingin melihat dashboard prodi.], [Tim Prodi],
      [US-46], [Sebagai Tim Prodi, saya ingin ekspor data format KEMENDIKTI.], [Tim Prodi],
      [US-47], [Sebagai Tim Prodi, saya ingin mengirim ulang email supervisor.], [Tim Prodi],
      
      // Alumni
      [US-48], [Sebagai Alumni, saya ingin mengisi kuesioner.], [Alumni],
      [US-49], [Sebagai Alumni, saya ingin melewati Exit Survey jika sudah bekerja.], [Alumni],
      [US-50], [Sebagai Alumni, saya ingin menerima notifikasi Tracer Study Lv.1 (Email).], [Alumni],
      [US-51], [Sebagai Alumni, saya ingin menerima notifikasi Tracer Study Lv.2 (WhatsApp).], [Alumni],
      
      // Pimpinan & Supervisor
      [US-52], [Sebagai Pimpinan Unit, saya ingin melihat laporan Pengisian Kuesioner.], [Pimpinan Unit],
      [US-53], [Sebagai Supervisor, saya dapat mengisi kuisioner SKP tanpa registrasi.], [Supervisor],
    ),
    caption: "Tabel User Story (Kebutuhan Fungsional)",
  ) <tabel-user-stories>

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

  === Alur Proses Bisnis
  Alur proses bisnis (_Business Process_) menggambarkan rangkaian aktivitas yang terjadi dalam pelaksanaan tracer study di ITK, mulai dari inisiasi oleh admin hingga pengolahan data hasil survei.

  #figure(
    image("resources/images/bpmn_siklus_tracer_study.png", width: 95%),
    caption: [BPMN Siklus Pelaksanaan Tracer Study],
  ) <fig:bpmn_siklus>

  === Perancangan Desain (_Design_)
  Tahap perancangan menerjemahkan kebutuhan menjadi representasi visual dan teknis.


  ==== _Use Case Diagram_ 
  _Use Case Diagram_ memvisualisasikan interaksi aktor (Alumni, Admin) dengan fungsi-fungsi utama sistem. Berikut adalah penjabaran _use case_ berdasarkan modul utama:

  #figure(
    grid(
      columns: (1fr, 1fr),
      gutter: 1em,
      [
        #image("resources/images/usecase_user_managemen.png", width: 100%)
        #align(center)[(a) Manajemen Pengguna]
      ],
      [
        #image("resources/images/usecase_manajemen_kuesioner.png", width: 100%)
        #align(center)[(b) Manajemen Kuesioner]
      ],
    ),
    caption: [Diagram Use Case Modul Manajemen],
  ) <fig:usecase_manajemen>

  #figure(
    grid(
      columns: (1fr, 1fr),
      gutter: 1em,
      [
        #image("resources/images/usecase_modul_kuisioner.png", width: 100%)
        #align(center)[(a) Pengisian Kuesioner]
      ],
      [
        #image("resources/images/usecase_response_management.png", width: 100%)
        #align(center)[(b) Manajemen Respons]
      ],
    ),
    caption: [Diagram Use Case Modul Operasional],
  ) <fig:usecase_operasional>

  #figure(
    image("resources/images/usecase_export_import.png", width: 60%),
    caption: [Diagram Use Case Ekspor/Impor Data],
  ) <fig:usecase_ekspor>



  ==== Perancangan Alur Pengisian Kuesioner
  Diagram berikut mendetailkan aktivitas pengguna (alumni) saat melakukan pengisian kuesioner pada antarmuka frontend, termasuk mekanisme validasi dan penyimpanan progres.

  #figure(
    image("resources/images/bpmn_sistem_pengisian_kuisioner.png", width: 95%),
    caption: [BPMN Alur Pengisian Kuesioner oleh Alumni],
  ) <fig:bpmn_pengisian>


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
  + *Usability Testing*: Mengukur tingkat kegunaan dan kepuasan pengguna terhadap antarmuka baru menggunakan metode _System Usability Scale_ (SUS). Pengujian ini penting untuk memvalidasi keberhasilan penerapan _User Centered Design_.

  // ===========================================================================
  // 3.4 DESAIN ANTARMUKA
  // ===========================================================================
  == Desain Antarmuka (_Interface Design_)
  Bagian ini menjelaskan rancangan antarmuka pengguna (_User Interface_) yang akan diimplementasikan. Rancangan ini dibuat berdasarkan analisis kebutuhan pengguna dan prinsip-prinsip _User Centered Design_ .

  Following adalah rancangan antarmuka _low-fidelity_ (Lo-Fi) yang menggambarkan tata letak utama dan alur navigasi aplikasi.

  === Halaman Login
  Halaman ini merupakan gerbang masuk utama bagi seluruh pengguna (Alumni, Admin, Pimpinan). Desain dibuat minimalis untuk memaksimalkan fokus pengguna pada kredensial akses.

  #figure(
    image("resources/images/lofi-wireframe/Login Page Wireframe (Low-Fi).png", width: 80%),
    caption: [Wireframe Halaman Login],
  ) <fig:wireframe_login>

  === Dashboard Alumni
  Dashboard utama bagi alumni dirancang untuk memberikan informasi sekilas yang paling relevan, yaitu status pengisian kuesioner, progres tahapan survei, dan pengumuman penting.

  #figure(
    image("resources/images/lofi-wireframe/Alumni Dashboard Wireframe (Low-Fi).png", width: 90%),
    caption: [Wireframe Dashboard Alumni],
  ) <fig:wireframe_dashboard_alumni>

  === Manajemen Kuesioner (Admin)
  Sub-modul ini adalah inti dari sisi administratif, di mana Admin dapat melihat daftar kuesioner yang aktif dan membuat kuesioner baru menggunakan fitur _Questionnaire Builder_ yang dinamis.

  #figure(
    image("resources/images/lofi-wireframe/Admin List Questionnaire Wireframe (Low-Fi).png", width: 90%),
    caption: [Wireframe Daftar Kuesioner (Admin)],
  ) <fig:wireframe_admin_list>

  #figure(
    image("resources/images/lofi-wireframe/Questionnaire Builder Wireframe (Low-Fi).png", width: 90%),
    caption: [Wireframe Pembuat Kuesioner Dinamis],
  ) <fig:wireframe_builder>

  === Laporan dan Analitik
  Halaman laporan menyajikan visualisasi data hasil tracer study dalam bentuk grafik interaktif. Admin dapat memfilter data berdasarkan tahun lulus atau program studi untuk mendapatkan wawasan yang lebih spesifik.

  #figure(
    image("resources/images/lofi-wireframe/Admin Reports Wireframe (Low-Fi).png", width: 90%),
    caption: [Wireframe Laporan dan Analitik],
  ) <fig:wireframe_reports>

  // ===========================================================================
  // 3.5 JADWAL PENELITIAN
  // ===========================================================================
  #pagebreak()
  == Jadwal Penelitian

  Penelitian ini direncanakan selesai dalam waktu 4-5 bulan.

#let bg = rgb("#3385d1") // The blue color from the image

#table(
  columns: (auto, ..(1fr,) * 24),
  align: center + horizon,
  stroke: 0.5pt,
  
  // Headers
  table.header(
    table.cell(rowspan: 2)[*Kegiatan*],
    table.cell(colspan: 4)[*Februari*],
    table.cell(colspan: 4)[*Maret*],
    table.cell(colspan: 4)[*April*],
    table.cell(colspan: 4)[*Mei*],
    table.cell(colspan: 4)[*Juni*],
    table.cell(colspan: 4)[*Juli*],
    
    // Week numbers
    ..range(1, 5).map(i => [#i]),
    ..range(1, 5).map(i => [#i]),
    ..range(1, 5).map(i => [#i]),
    ..range(1, 5).map(i => [#i]),
    ..range(1, 5).map(i => [#i]),
    ..range(1, 5).map(i => [#i]),
  ),

  // Rows
  [Studi Literatur], ..(table.cell(fill: bg)[],) * 24,
  
  [Identifikasi Masalah], 
  table.cell(fill: bg)[], table.cell(fill: bg)[], ..(none,) * 22,
  
  [Analisis Kebutuhan],
  none, none, table.cell(fill: bg)[], table.cell(fill: bg)[], 
  table.cell(fill: bg)[], table.cell(fill: bg)[], ..(none,) * 18,
  
  [Desain],
  ..(none,) * 4, table.cell(fill: bg)[], table.cell(fill: bg)[], 
  table.cell(fill: bg)[], table.cell(fill: bg)[], ..(none,) * 16,
  
  [Implementasi],
  ..(none,) * 8, ..(table.cell(fill: bg)[],) * 12, ..(none,) * 4,
  
  [Pengujian & Validasi],
  ..(none,) * 16, ..(table.cell(fill: bg)[],) * 4, ..(none,) * 4,
  
  [Pendaftaran HKI],
  ..(none,) * 20, table.cell(fill: bg)[], table.cell(fill: bg)[], none, none,
  
  [Analisis Hasil dan Diskusi],
  ..(none,) * 20, table.cell(fill: bg)[], table.cell(fill: bg)[], none, none,
  
  [Kesimpulan dan Saran],
  ..(none,) * 22, table.cell(fill: bg)[], table.cell(fill: bg)[],
)
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

