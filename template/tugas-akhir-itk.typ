// Typst Template for Tugas Akhir ITK
// Institut Teknologi Kalimantan - 2025
// Based on "Panduan Kepenulisan Tugas Akhir" guidelines

// ============================================================================
// CONFIGURATION
// ============================================================================

#let thesis-types = (
  skripsi: "Skripsi",
  proyek: "Proyek",
  prototipe: "Prototipe",
)

// Indonesian month names
#let bulan-indo = (
  "January": "Januari",
  "February": "Februari",
  "March": "Maret",
  "April": "April",
  "May": "Mei",
  "June": "Juni",
  "July": "Juli",
  "August": "Agustus",
  "September": "September",
  "October": "Oktober",
  "November": "November",
  "December": "Desember",
)

// Helper function to format date in Indonesian
#let tanggal-indo() = {
  let today = datetime.today()
  let day = today.display("[day]")
  let month-en = today.display("[month repr:long]")
  let year = today.display("[year]")
  let month-id = bulan-indo.at(month-en, default: month-en)
  [#day #month-id #year]
}

// ============================================================================
// MAIN TEMPLATE FUNCTION
// ============================================================================

#let tugas-akhir(
  // Document metadata
  title: "Judul Tugas Akhir",
  title-en: "Thesis Title in English",
  author: "Nama Mahasiswa",
  nim: "12345678",
  program-studi: "Informatika",
  jurusan: "Teknik Elektro, Informatika, dan Bisnis",
  fakultas: "Sains dan Teknologi Informasi",
  thesis-type: "prototipe", // skripsi, proyek, prototipe
  pembimbing-utama: "Nama Pembimbing Utama, S.T., M.T.",
  nip-pembimbing-utama: 198803082020121011,
  pembimbing-pendamping: "Nama Pembimbing Pendamping, S.T., M.T.",
  nip-pembimbing-pendamping: 199205182019031015,
  penguji-1: "Nama Penguji I",
  nip-penguji-1: "........................",
  penguji-2: "Nama Penguji II",
  nip-penguji-2: "........................",
  tahun: "2025",
  // Content
  body,
) = {
  // Get thesis type display name
  let thesis-display = thesis-types.at(thesis-type, default: "Prototipe")

  // Document settings
  set document(
    title: title,
    author: author,
  )

  // Page setup - A4 with mirror margins
  set page(
    paper: "a4",
    margin: (
      inside: 4cm,
      outside: 3cm,
      top: 3cm,
      bottom: 3cm,
    ),
    background: image("../resources/background_watermark_itk_07.png", width: 50%),
  )

  // Font settings - Times New Roman, 12pt
  set text(
    font: "Times New Roman",
    size: 12pt,
    lang: "id",
  )

  // Paragraph settings - 1.5 line spacing, justified, first-line indent
  set par(
    leading: 0.65em, // Approximately 1.5 line spacing
    first-line-indent: (amount: 1cm, all: true),
    justify: true,
  )

  // Heading styles
  set heading(numbering: none)

  // Chapter (BAB) style - Level 1
  show heading.where(level: 1): it => {
    pagebreak(weak: true)
    set text(size: 14pt, weight: "bold")
    set align(center)

    // Check if it's a BAB heading by converting to string representation
    let body-repr = repr(it.body)
    if body-repr.starts-with("[BAB") or it.numbering != none {
      v(0.5cm)
      it
      v(0.5cm)
    } else {
      // For front matter headings (ABSTRAK, KATA PENGANTAR, etc.)
      v(0.5cm)
      upper(it.body)
      v(0.5cm)
    }
  }

  // Sub-chapter (1.1) style - Level 2
  show heading.where(level: 2): it => {
    set text(size: 12pt, weight: "bold")
    v(0.3cm)
    it
    v(0.2cm)
  }

  // Sub-sub-chapter (1.1.1) style - Level 3
  show heading.where(level: 3): it => {
    set text(size: 12pt, weight: "bold")
    v(0.2cm)
    it
    v(0.1cm)
  }

  // Store state for chapter numbers
  let chapter-counter = counter("chapter")

  // Figure styling with chapter-based numbering
  set figure(
    placement: none,
    gap: 0.5cm,
  )

  show figure.caption: it => {
    set text(size: 12pt)
    set par(leading: 0.5em)
    it
  }

  // Remove colon separator from figure/table captions ("Gambar 1.1" not "Gambar 1.1:")
  set figure.caption(separator: [ ])

  // Table styling
  set table(
    stroke: (x, y) => (
      x: none,
      y: 0.5pt + black,
    ),
    inset: 5pt,
  )

  show table: it => {
    set text(size: 11pt)
    set par(leading: 0.35em) // Strict single spacing for tables
    it
  }

  // Ensure table captions are above the table
  show figure.where(kind: table): it => {
    set align(center)
    set par(leading: 1em) // Restore standard spacing for the wrapper
    if it.has("caption") {
      pad(bottom: 0.5em, it.caption) // Caption on top
      it.body
    } else {
      it.body
    }
  }

  // Equation numbering (right-aligned, chapter.number format)
  set math.equation(numbering: "(1)")

  show math.equation: it => {
    set align(center)
    it
  }

  // Store metadata in state for use in pages
  let metadata = state("thesis-metadata", (
    title: title,
    title-en: title-en,
    author: author,
    nim: nim,
    program-studi: program-studi,
    jurusan: jurusan,
    fakultas: fakultas,
    thesis-type: thesis-type,
    thesis-display: thesis-display,
    pembimbing-utama: pembimbing-utama,
    nip-pembimbing-utama: nip-pembimbing-utama,
    pembimbing-pendamping: pembimbing-pendamping,
    nip-pembimbing-pendamping: nip-pembimbing-pendamping,
    penguji-1: penguji-1,
    nip-penguji-1: nip-penguji-1,
    penguji-2: penguji-2,
    nip-penguji-2: nip-penguji-2,
    tahun: tahun,
  ))

  metadata.update(m => (
    title: title,
    title-en: title-en,
    author: author,
    nim: nim,
    program-studi: program-studi,
    jurusan: jurusan,
    fakultas: fakultas,
    thesis-type: thesis-type,
    thesis-display: thesis-display,
    pembimbing-utama: pembimbing-utama,
    nip-pembimbing-utama: nip-pembimbing-utama,
    pembimbing-pendamping: pembimbing-pendamping,
    nip-pembimbing-pendamping: nip-pembimbing-pendamping,
    penguji-1: penguji-1,
    nip-penguji-1: nip-penguji-1,
    penguji-2: penguji-2,
    nip-penguji-2: nip-penguji-2,
    tahun: tahun,
  ))

  body
}

// ============================================================================
// COVER PAGE
// ============================================================================

#let cover-page() = {
  set page(
    margin: (x: 3cm, y: 3cm),
    header: none,
    footer: none,
  )

  set align(center)
  set par(first-line-indent: 0pt, justify: false)

  context {
    let meta = state("thesis-metadata").get()

    v(1cm)

    // Logo placeholder
    rect(width: 4cm, height: 4cm, stroke: 1pt)[
      #set align(center + horizon)
      #text(size: 10pt)[Logo ITK]
    ]

    v(1cm)

    // Thesis type
    text(size: 14pt, weight: "bold")[
      #upper(meta.thesis-display)
    ]

    v(1cm)

    // Title
    text(size: 14pt, weight: "bold")[
      #upper(meta.title)
    ]

    v(2cm)

    text(size: 12pt)[
      Oleh:
    ]

    v(0.5cm)

    text(size: 12pt, weight: "bold")[
      #meta.author \
      NIM. #meta.nim
    ]

    v(2fr)

    text(size: 12pt, weight: "bold")[
      PROGRAM STUDI #upper(meta.program-studi) \
      #upper(meta.fakultas) \
      INSTITUT TEKNOLOGI KALIMANTAN \
      BALIKPAPAN \
      #meta.tahun
    ]

    v(1cm)
  }
}

// ============================================================================
// ORIGINALITY STATEMENT (PERNYATAAN ORISINALITAS)
// ============================================================================

#let originality-statement() = {
  set page(
    header: none,
    footer: context {
      set align(center)
      counter(page).display("i")
    },
  )

  set par(first-line-indent: 0pt)

  heading(level: 1)[PERNYATAAN ORISINALITAS TUGAS AKHIR]

  context {
    let meta = state("thesis-metadata").get()
    par([
      Dengan ini saya menyatakan bahwa isi sebagian maupun keseluruhan Tugas
      Akhir saya dengan judul #strong(meta.title) adalah
      benar-benar hasil karya intelektual mandiri, diselesaikan tanpa menggunakan
      bahan-bahan yang tidak diizinkan dan bukan merupakan karya pihak lain yang
      saya akui sebagai karya sendiri. Semua referensi yang dikutip maupun
      dirujuk telah ditulis secara lengkap pada daftar pustaka. Apabila ternyata
      pernyataan ini tidak benar, saya bersedia menerima sanksi sesuai peraturan
      yang berlaku.
    ])

    v(2cm)

    grid(
      columns: (1fr, 1fr),
      [],
      align(left)[
        Balikpapan, #tanggal-indo()
        #v(1cm)
        [MATERIAL + TTD]
        #v(1cm)
        #meta.author \
        NIM. #meta.nim
      ],
    )
    //
    //   par(first-line-indent: 1cm, justify: true)[
    //     Saya yang bertanda tangan di bawah ini:
    //   ]
    //
    //   v(0.5cm)
    //
    //   table(
    //     columns: (3cm, 0.5cm, auto),
    //     stroke: none,
    //     inset: 3pt,
    //     [Nama], [:], [#meta.author],
    //     [NIM], [:], [#meta.nim],
    //     [Program Studi], [:], [#meta.program-studi],
    //     [#meta.thesis-display], [:], [#meta.title],
    //   )
    //
    //   v(0.5cm)
    //
    //   par(first-line-indent: 1cm, justify: true)[
    //     menyatakan bahwa #meta.thesis-display ini adalah hasil karya saya sendiri dan ditulis dengan mengikuti kaidah penulisan ilmiah. Apabila di kemudian hari ditemukan pelanggaran terhadap kaidah keilmuan dalam karya ini, saya bersedia menanggung segala konsekuensi hukum yang berlaku.
    //   ]
    //
    //   v(2cm)
    //
    //   grid(
    //     columns: (1fr, 1fr),
    //     [],
    //     align(center)[
    //       Balikpapan, #tanggal-indo()
    //
    //       #v(2cm)
    //
    //       #meta.author \
    //       NIM. #meta.nim
    //     ],
    //   )
  }
}

// ============================================================================
// PUBLICATION CONSENT (PERSETUJUAN PUBLIKASI)
// ============================================================================

#let publication-consent() = {
  set page(
    header: none,
    footer: context {
      set align(center)
      counter(page).display("i")
    },
  )

  set par(first-line-indent: 0pt)

  heading(level: 1)[PERNYATAAN PERSETUJUAN PUBLIKASI \ TUGAS AKHIR UNTUK KEPENTINGAN AKADEMIS]

  context {
    let meta = state("thesis-metadata").get()

    par(justify: true)[
      Sebagai sivitas akademik Institut Teknologi Kalimantan, saya yang bertanda tangan di bawah ini:
    ]

    v(0.5cm)

    table(
      columns: (3cm, 0.5cm, auto),
      stroke: none,
      inset: 3pt,
      [Nama], [:], [#meta.author],
      [NIM], [:], [#meta.nim],
      [Program Studi], [:], [#meta.program-studi],
      [Jurusan], [:], [#meta.jurusan],
      [Fakultas], [:], [#meta.fakultas],
      // [#meta.thesis-display], [:], [#meta.title],
    )

    v(0.5cm)

    par(first-line-indent: 1cm, justify: true)[
      demi pengembangan ilmu pengetahuan, menyetujui untuk memberikan kepada Institut Teknologi Kalimantan Hak Bebas Royalti Non-eksklusif (_Non-exclusive Royalty-Free Right_) atas #meta.thesis-display saya yang berjudul:
    ]

    v(0.5cm)

    align(center)[
      *#upper(meta.title)*
    ]

    v(0.5cm)

    par(justify: true)[
      beserta perangkat yang ada (jika diperlukan). Dengan Hak Bebas Royalti
      Non-eksklusi ini, Institut Teknologi Kalimantan berhak menyimpan,
      mengalihmediakan, mengelola dalam bentuk pangkalan data (database),
      merawat, dan memublikasikan tugas akhir saya selama tetap mencantumkan nama
      saya sebagai penulis/pencipta dan sebagai pemilik Hak Cipta.
    ]

    v(0.5cm)
    text([Demikian pernyataan ini saya buat dengan sebenarnya.])
    v(2cm)

    grid(
      columns: (1fr, 1fr),
      [],
      align(left)[
        Balikpapan, #tanggal-indo()

        #v(2cm)

        #meta.author \
        NIM. #meta.nim
      ],
    )
  }
}

// ============================================================================
// APPROVAL PAGE FOR PROPOSAL (LEMBAR PERSETUJUAN PROPOSAL)
#let approval-proposal-page() = {
  set page(
    header: none,
    footer: context {
      set align(center)
      counter(page).display("i")
    },
    background: none,
  )

  set par(first-line-indent: 0pt)
  // set align(left)

  heading(level: 1)[LEMBAR PERSETUJUAN]

  context {
    let meta = state("thesis-metadata").get()
    text(size: 12pt)[Proposal Tugas Akhir dengan judul:]

    v(0.5cm)
    align(center, text(size: 14pt, weight: "bold")[
      "#upper(meta.title)"
    ])

    v(1cm)

    text(size: 12pt)[Yang disusun oleh:]
    v(0.5cm)

    align(center, text(size: 12pt)[
      [tanda tangan] \
      #v(1cm)
      #meta.author \
      NIM. #meta.nim
    ])

    v(1cm)

    text[Telah diperiksa dan disetujui oleh dosen pembimbing:]

    v(1cm)

    grid(
      columns: (1fr, 1fr),
      gutter: 1cm,
      [
        #align(left)[
          Dosen Pembimbing Utama

          #v(2.5cm)

          #meta.pembimbing-utama \
          NIP. #meta.nip-pembimbing-utama
        ]
      ],
      [
        #align(left)[
          Dosen Pembimbing Pendamping

          #v(2.5cm)

          #meta.pembimbing-pendamping \
          NIP. #meta.nip-pembimbing-pendamping
        ]
      ],
    )
  }
}

// APPROVAL PAGE (LEMBAR PENGESAHAN)
// ============================================================================

#let approval-page() = {
  set page(
    header: none,
    footer: context {
      set align(center)
      counter(page).display("i")
    },
    background: none,
  )

  set par(first-line-indent: 0pt)
  set align(center)

  heading(level: 1)[LEMBAR PENGESAHAN \ TUGAS AKHIR]

  context {
    let meta = state("thesis-metadata").get()

    v(1cm)

    set align(center)
    text(size: 12pt)[
      Disusun untuk memenuhi syarat memperoleh gelar \
      Sarjana Komputer (S.Kom.) \
      pada \
      Program Studi S-1 #meta.program-studi #meta.jurusan \
      #meta.fakultas \
      Institut Teknologi Kalimantan

      Judul Tugas Akhir :\
      *#upper(meta.title)*
      #v(0.5cm)
      Oleh :\
      #meta.author NIM. #meta.nim
    ]


    v(1cm)

    set align(left)
    text[Disetujui oleh Tim Penguji Tugas Akhir:]

    v(0.5cm)

    grid(
      columns: (0.5fr, 6fr, 2fr, 2fr),
      row-gutter: 1cm,
      align: left,
      [1.], [ #meta.pembimbing-utama], [Pembimbing I], [....................],
      [2.], [#meta.pembimbing-pendamping], [Pembimbing II], [....................],
      [3.], [#meta.penguji-1], [Penguji I], [....................],
      [4.], [#meta.penguji-2], [Penguji II], [....................],
    )

    v(2fr)

    set align(center)
    text(weight: "bold")[
      BALIKPAPAN \
      [BULAN disesuaikan dengan periode Sidang TA], #meta.tahun
    ]

    v(1cm)
  }
}

// ============================================================================
// PREFACE (KATA PENGANTAR)
// ============================================================================

#let preface(body) = {
  set page(
    header: none,
    footer: context {
      set align(center)
      counter(page).display("i")
    },
  )

  heading(level: 1)[KATA PENGANTAR]

  body

  context {
    let meta = state("thesis-metadata").get()

    v(1cm)

    grid(
      columns: (1fr, 1fr),
      [],
      align(left)[
        Balikpapan, #tanggal-indo()

        #v(1.5cm)

        #meta.author
        #v(0cm)
        NIM. #meta.nim
      ],
    )
  }
}

// ============================================================================
// ABSTRACT (ABSTRAK)
// ============================================================================

#let abstract-id(keywords: (), body) = {
  set page(
    header: none,
    footer: context {
      set align(center)
      counter(page).display("i")
    },
  )

  // Abstract uses single spacing
  set par(leading: 0.5em, first-line-indent: 0pt)

  heading(level: 1)[ABSTRAK]

  context {
    let meta = state("thesis-metadata").get()

    align(center)[
      *#meta.title*

      #v(0.3cm)

      Oleh: \
      #meta.author \
      NIM. #meta.nim
    ]
  }

  v(0.5cm)

  body

  v(0.5cm)

  if keywords.len() > 0 {
    par(first-line-indent: 0pt)[
      *Kata Kunci:* #keywords.join(", ")
    ]
  }
}

#let abstract-en(keywords: (), body) = {
  set page(
    header: none,
    footer: context {
      set align(center)
      counter(page).display("i")
    },
  )

  // Abstract uses single spacing
  set par(leading: 0.5em, first-line-indent: 0pt)

  heading(level: 1)[ABSTRACT]

  context {
    let meta = state("thesis-metadata").get()

    align(center)[
      *#meta.title-en*

      #v(0.3cm)

      By: \
      #meta.author \
      Student ID. #meta.nim
    ]
  }

  v(0.5cm)

  body

  v(0.5cm)

  if keywords.len() > 0 {
    par(first-line-indent: 0pt)[
      *Keywords:* #keywords.join(", ")
    ]
  }
}

// ============================================================================
// TABLE OF CONTENTS
// ============================================================================

#let table-of-contents() = {
  set page(
    header: none,
    footer: context {
      set align(center)
      counter(page).display("i")
    },
  )

  heading(level: 1)[DAFTAR ISI]

  outline(
    title: none,
    indent: 1em,
    depth: 3,
  )
}

#let list-of-figures() = {
  set page(
    header: none,
    footer: context {
      set align(center)
      counter(page).display("i")
    },
  )

  heading(level: 1)[DAFTAR GAMBAR]

  outline(
    title: none,
    target: figure.where(kind: image),
  )
}

#let list-of-tables() = {
  set page(
    header: none,
    footer: context {
      set align(center)
      counter(page).display("i")
    },
  )

  heading(level: 1)[DAFTAR TABEL]

  outline(
    title: none,
    target: figure.where(kind: table),
  )
}

// ============================================================================
// CHAPTER SETUP (BAB)
// ============================================================================

#let chapter(number, title, body) = {
  // Reset page numbering for first chapter (BAB 1)
  if number == 1 {
    counter(page).update(1)
  }

  // Set header and footer for body content
  set page(
    header: context {
      let meta = state("thesis-metadata").get()
      set text(size: 10pt)
      [#meta.thesis-display Program Studi #meta.program-studi]
      h(1fr)
    },
    footer: context {
      set align(right)
      counter(page).display("1")
    },
  )

  // Store chapter number for figure/table numbering
  counter("chapter").update(number)
  counter(heading).update(0)
  counter(figure.where(kind: image)).update(0)
  counter(figure.where(kind: table)).update(0)
  counter(math.equation).update(0)

  // Chapter heading
  heading(level: 1, numbering: none)[BAB #number \ #upper(title)]

  // Chapter content with proper heading numbering
  let ch-num = number
  set heading(numbering: (..nums) => {
    let level = nums.pos().len()
    if level == 1 { none } else {
      let sub-nums = nums.pos().slice(1)
      numbering("1." * level, ch-num, ..sub-nums)
    }
  })

  body
}

// ============================================================================
// BIBLIOGRAPHY
// ============================================================================

#let bibliography-section(bib-content) = {
  set page(
    header: context {
      let meta = state("thesis-metadata").get()
      set text(size: 10pt)
      [#meta.thesis-display Program Studi #meta.program-studi]
      h(1fr)
    },
    footer: context {
      set align(right)
      counter(page).display("1")
    },
  )

  heading(level: 1)[DAFTAR PUSTAKA]

  // Harvard style citation
  set par(
    hanging-indent: 1.27cm,
    first-line-indent: 0pt,
  )

  bib-content
}

// ============================================================================
// APPENDIX
// ============================================================================

#let appendix(title, body) = {
  set page(
    header: context {
      let meta = state("thesis-metadata").get()
      set text(size: 10pt)
      [#meta.thesis-display Program Studi #meta.program-studi]
      h(1fr)
    },
    footer: context {
      set align(right)
      counter(page).display("1")
    },
  )

  heading(level: 1)[LAMPIRAN \ #upper(title)]

  body
}

// ============================================================================
// UTILITY FUNCTIONS
// ============================================================================

// Figure with chapter-based numbering
#let gambar(img, caption: "", width: 100%) = {
  figure(
    image(img, width: width),
    caption: context {
      let ch = counter("chapter").get().first()
      let fig-num = counter(figure.where(kind: image)).get().first()
      [#caption]
    },
    kind: image,
    supplement: [Gambar],
    numbering: n => context {
      let ch = counter("chapter").get().first()
      str(ch) + "." + str(n)
    },
  )
}

// Table with chapter-based numbering
#let tabel(content, caption: "", placement: none) = {
  figure(
    content,
    caption: context {
      let ch = counter("chapter").get().first()
      let tbl-num = counter(figure.where(kind: table)).get().first()
      [#caption]
    },
    kind: table,
    supplement: none,
    placement: placement,
  )
}

// Equation with chapter-based numbering
#let persamaan(eq) = {
  context {
    let ch = counter("chapter").get().first()
    counter(math.equation).step()
    let eq-num = counter(math.equation).get().first()

    grid(
      columns: (1fr, auto),
      align: (center, right),
      math.equation(eq, block: true, numbering: none), [(#ch.#eq-num)],
    )
  }
}
