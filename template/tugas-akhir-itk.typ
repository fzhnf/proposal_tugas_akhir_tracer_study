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
  fakultas: "Fakultas Sains dan Teknologi Data",
  thesis-type: "prototipe", // skripsi, proyek, prototipe
  pembimbing-utama: "Nama Pembimbing Utama, S.T., M.T.",
  pembimbing-pendamping: "Nama Pembimbing Pendamping, S.T., M.T.",
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
    first-line-indent: 1cm,
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
    placement: auto,
    gap: 0.5cm,
  )

  show figure.caption: it => {
    set text(size: 12pt)
    set par(leading: 0.5em)
    it
  }

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
    fakultas: fakultas,
    thesis-type: thesis-type,
    thesis-display: thesis-display,
    pembimbing-utama: pembimbing-utama,
    pembimbing-pendamping: pembimbing-pendamping,
    tahun: tahun,
  ))

  metadata.update(m => (
    title: title,
    title-en: title-en,
    author: author,
    nim: nim,
    program-studi: program-studi,
    fakultas: fakultas,
    thesis-type: thesis-type,
    thesis-display: thesis-display,
    pembimbing-utama: pembimbing-utama,
    pembimbing-pendamping: pembimbing-pendamping,
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

  heading(level: 1)[PERNYATAAN ORISINALITAS]

  context {
    let meta = state("thesis-metadata").get()

    par(first-line-indent: 1cm, justify: true)[
      Saya yang bertanda tangan di bawah ini:
    ]

    v(0.5cm)

    table(
      columns: (3cm, 0.5cm, auto),
      stroke: none,
      inset: 3pt,
      [Nama], [:], [#meta.author],
      [NIM], [:], [#meta.nim],
      [Program Studi], [:], [#meta.program-studi],
      [#meta.thesis-display], [:], [#meta.title],
    )

    v(0.5cm)

    par(first-line-indent: 1cm, justify: true)[
      menyatakan bahwa #meta.thesis-display ini adalah hasil karya saya sendiri dan ditulis dengan mengikuti kaidah penulisan ilmiah. Apabila di kemudian hari ditemukan pelanggaran terhadap kaidah keilmuan dalam karya ini, saya bersedia menanggung segala konsekuensi hukum yang berlaku.
    ]

    v(2cm)

    grid(
      columns: (1fr, 1fr),
      [],
      align(center)[
        Balikpapan, #datetime.today().display("[day] [month repr:long] [year]")

        #v(2cm)

        #meta.author \
        NIM. #meta.nim
      ],
    )
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

    par(first-line-indent: 1cm, justify: true)[
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
      [#meta.thesis-display], [:], [#meta.title],
    )

    v(0.5cm)

    par(first-line-indent: 1cm, justify: true)[
      demi pengembangan ilmu pengetahuan, menyetujui untuk memberikan kepada Institut Teknologi Kalimantan *Hak Bebas Royalti Noneksklusif* (_Non-exclusive Royalty-Free Right_) atas #meta.thesis-display saya yang berjudul:
    ]

    v(0.5cm)

    align(center)[
      *#meta.title*
    ]

    v(0.5cm)

    par(first-line-indent: 1cm, justify: true)[
      beserta perangkat yang ada (jika diperlukan). Dengan Hak Bebas Royalti Noneksklusif ini, Institut Teknologi Kalimantan berhak menyimpan, mengalihmedia/formatkan, mengelola dalam bentuk pangkalan data (_database_), merawat, dan mempublikasikan #meta.thesis-display saya selama tetap mencantumkan nama saya sebagai penulis/pencipta dan sebagai pemilik Hak Cipta.
    ]

    v(2cm)

    grid(
      columns: (1fr, 1fr),
      [],
      align(center)[
        Balikpapan, #datetime.today().display("[day] [month repr:long] [year]")

        #v(2cm)

        #meta.author \
        NIM. #meta.nim
      ],
    )
  }
}

// ============================================================================
// APPROVAL PAGE (LEMBAR PENGESAHAN)
// ============================================================================

#let approval-page() = {
  set page(
    header: none,
    footer: context {
      set align(center)
      counter(page).display("i")
    },
  )

  set par(first-line-indent: 0pt)
  set align(center)

  heading(level: 1)[LEMBAR PENGESAHAN]

  context {
    let meta = state("thesis-metadata").get()

    v(0.5cm)

    text(size: 14pt, weight: "bold")[
      #upper(meta.title)
    ]

    v(1cm)

    text(size: 12pt)[
      Oleh: \
      *#meta.author* \
      NIM. #meta.nim
    ]

    v(1cm)

    par(first-line-indent: 0pt, justify: false)[
      Diajukan untuk memenuhi salah satu syarat memperoleh gelar Sarjana pada Program Studi #meta.program-studi #meta.fakultas Institut Teknologi Kalimantan.
    ]

    v(1cm)

    text[Disetujui oleh:]

    v(0.5cm)

    grid(
      columns: (1fr, 1fr),
      gutter: 1cm,
      [
        #align(center)[
          Pembimbing Utama

          #v(2cm)

          #meta.pembimbing-utama \
          NIP. ........................
        ]
      ],
      [
        #align(center)[
          Pembimbing Pendamping

          #v(2cm)

          #meta.pembimbing-pendamping \
          NIP. ........................
        ]
      ],
    )

    v(1cm)

    text[Disahkan oleh:]

    v(0.5cm)

    align(center)[
      Koordinator Program Studi #meta.program-studi

      #v(2cm)

      ..................................... \
      NIP. ........................
    ]
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
      align(center)[
        Balikpapan, #datetime.today().display("[day] [month repr:long] [year]")

        #v(1.5cm)

        #meta.author \
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
      set align(center)
      counter(page).display("1")
    },
  )

  // Store chapter number for figure/table numbering
  counter("chapter").update(number)
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
      numbering(str(ch-num) + "." + "1." * (level - 1), ..sub-nums)
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
      set align(center)
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
      set align(center)
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
      [Gambar #ch.#fig-num #caption]
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
      [Tabel #ch.#tbl-num #caption]
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
