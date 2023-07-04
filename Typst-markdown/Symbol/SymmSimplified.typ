#let symm=(

    // Delimiters.
    paren: (
        l: "(",
        r: ")", 
        t: "⏜", 
        b: "⏝"),
    brace: (l: "{",
            r: "}", 
            t: "⏞", 
            b: "⏟"),
    bracket: (l: (o:"[", 
                  double: "⟦"), 
              r: (o:"]", 
                  double: "⟧"),
              t: "⎴", 
              b: "⎵"),
    turtle: (l: "〔", 
             r: "〕", 
             t: "⏠", 
             b: "⏡"),
    bar: (v: (o:"|", 
              double: "‖",
              triple: "⦀",
              broken: "¦", ),   
          h: "―"),
    fence: (l: ( o:"⧘", 
                double: "⧚"), 
            r: ("":"⧙",
                double: "⧛"),
            dotted: "⦙"),

    angle: (
        o:"∠",
        l: (
            o:"⟨",
            double: "《",
        ),
        r: (o:"⟩",
            double: "》",
        ),
        acute: "⦟",
        arc: (
            o:"∡",
            rev: "⦛",
        ),
        rev: "⦣",
        spheric: (
            o:"∢",
            rev: "⦠",
            top: "⦡",
        )
    ),

        // Punctuation.
    amp: (
        o:"&", 
        inv: "⅋",
    ),
    ast: (
        o:"*",
    ),
    at: "@",
    backslash: (
        o:"\\", 
        "not": "⧷",
    ),
    co: "℅",
    colon: (
        o:":", 
        eq: "≔", 
        double:(
            eq: "⩴",
            ),
    ),
    comma: ",",
    dagger: (
        o:"†", 
        double: "‡",
    ),
    dash: (
        en: "–",
        em: "—",
        fig: "‒",
        wave: (
            o:"〜",
            double: "〰",
        colon: "∹",
    ),
    ),
    dot: (
        o:".",
        op: "⋅",
        c: "·",
        circle: (
            o:"⊙",
            big: "⨀",
        ),
        square: "⊡",
        double: "¨",
        triple: "\u{20db}",
        quad: "\u{20dc}",
    ),
    excl: (
        o:"!", 
        double: "‼", 
        inv: "¡", 
        quest: "⁉",
    ),
    quest: (
        o:"?", 
        double: "⁇", 
        excl: "⁈", 
        inv: "¿",
    ),
    interrobang: "‽",
    hash: "#",
    hyph: (
        o:"‐", 
        minus: "\u{2D}", 
        nobreak: "\u{2011}", 
        point: "‧", 
        soft: "\u{ad}",
    ),
    percent: "%",
    semi: (
        o:";", 
        rev: "⁏",
    ),
    slash: (
        o:"/", 
        double: "⫽", 
        triple: "⫻",
    ),
    dots: (
        h: (
            o:"…", 
            c: "⋯",
         ),
    ),
    tilde: (
        o:"~",
        op: "∼",
        eq: (
            o:"≃",
            "not": "≄",
            rev: "⋍",
        ),
        eqq: (
            o:"≅",
            "not": "≇",
        ),
        neqq: "≆",
        "not": "≁",
    ),

    // Accents, quotes, and primes.
    acute: (
        o:"´", 
        double: "˝"
    ),
    breve: "˘",
    caret: "‸",
    caron: "ˇ",
    hat: "^",
    diaer: "¨",
    grave: "`",
    macron: "¯",
    quote: (
        double: "\"",
        single: "\"",
        l:(
            double: "“",
            single: "‘",
        ),
        r:(
            double: "”",
            single: "’",
        ),
        angle:(
            l:(
                double: "«",
                single: "‹",
            ),
            r:(
                double: "»",
                single: "’",
            ),  
        ),          
        high:(
            double: "‟",
            single: "‛",
        ),
        low:(
            double: "„",
            single: "‚",
        ),
    ),
    prime: (
        o:"′",
        rev: "‵",
        double: (
            o:"″",
            rev: "‶",
        ),
        triple:(
            o: "‴",
            rev: "‷",
        ),
        quad: "⁗",
    ),

        // https://en.wikipedia.org/wiki/List_of_mathematical_symbols_by_subject
    // Arithmetic.
    ratio: "∶",


// Relations.
    eq: (
        o:"=",
        colon: "≕",
        delta: "≜",
        gt: "⋝",
        lt: "⋜",
        "not": "≠",
        prec: "⋞",
        small: "﹦",
        succ: "⋟",
    ),
    gt: (
        o:">",
        double: "≫",
        eq: (
            o:"≥",
        ),
        eqq: "≧",
        small: "﹥",
    ),
    lt: (
        o:"<",
        double: "≪",
        eq: (
            o:"≤",
        ),
        eqq: "≦",
        small: "﹤",
        tilde: (
            o:"≲",
        ),
        triple: (
            o:"⋘",
            nested: "⫷",
        ),
    ),
    approx: (
        o:"≈", 
        eq: "≊", 
        "not": "≉",
    ),
    prec: (
        o:"≺",
        approx: "⪷",
        double: "⪻",
        eq: (
            o:"≼",
            "not": "⋠",
        ),
        eqq: "⪳",
    ),
    succ: (
        o:"≻",
        double: "⪼",
        eq: (
            o:"≽",
            "not": "⋡",
        ),
        eqq: "⪴",
        napprox: "⪺",
        neqq: "⪶",
        "not": "⊁",
        ntilde: "⋩",
        tilde: "≿",
    ),
    ident: (
        o:"≡", 
        "not": "≢", 
        strict: "≣",
    ),
    prop: "∝",

 // Set theory.
    nothing: (
        o:"∅", 
        rev: "⦰",
    ),
    without: "∖",
    complement: "∁",
    "in": (
        o:"∈",
        "not": "∉",
        rev: (
            o:"∋",
            "not": "∌",
            small: "∍",
        ),
        small: "∊",
    ),
    subset: (
        o:"⊂",
        dot: "⪽",
        double: "⋐",
        eq: (
            o:"⊆",
            "not": "⊈",
            sq: (
                o:"⊑",
                "not": "⋢",
            ),
        ),
        neq: "⊊",
        "not": "⊄",
        sq: (
            o:"⊏",
            neq: "⋤",
        ),
    ),
    supset: (
        o:"⊃",
        dot: "⪾",
        double: "⋑",
        eq: (
            o:"⊇",
            "not": "⊉",
            sq: (
                o:"⊒",
                "not": "⋣",
            ),
        ),
        neq: "⊋",
        "not": "⊅",
        sq: (
            o:"⊐",
            neq: "⋥",
        ),
    ),
    union: (
        o:"∪",
        arrow: "⊌",
        big: "⋃",
        dot: (
            o:"⊍",
            big: "⨃",
        ),
        double: "⋓",
        minus: "⩁",
        "or": "⩅",
        plus: (
            o:"⊎",
            big: "⨄",
        ),
        sq: (
            o:"⊔",
            big: "⨆",
            double: "⩏",
        ),
    ),
    sect: (
        o:"∩",
        "and": "⩄",
        big: "⋂",
        dot: "⩀",
        double: "⋒",
        sq: (
            o:"⊓",
            big: "⨅",
            double: "⩎",
        ),
    ),

    // Calculus.
    infinity: "∞",
    oo: "∞",
    diff: "∂",
    nabla: "∇",
    sum: (
        o:"∑", 
        integral: "⨋",
    ),
    product: (
        o:"∏", co: "∐",
    ),
    integral: (
        o:"∫",
        arrow:(
            hook: "⨗"
        ),
        ccw: "⨑",
        cont: (
            o:"∮",
            ccw: "∳",
            cw: "∲",
        ),
        cw: "∱",
        double: "∬",
        quad: "⨌",
        sect: "⨙",
        sq: "⨖",
        surf: "∯",
        times: "⨘",
        triple: "∭",
        union: "⨚",
        vol: "∰",
    ),
    laplace: "∆",


    // Logic.
    forall: "∀",
    exists: (
        o:"∃", 
        "not": "∄"
    ),
    top: "⊤",
    bot: "⊥",
    "not": "¬",
    "and": (
        o:"∧", 
        big: "⋀", 
        curly: "⋏", 
        dot: "⟑", 
        double: "⩓"
    ),
    "or": (
        o:"∨", 
        big: "⋁", 
        curly: "⋎", 
        dot: "⟇", 
        double: "⩔"
    ),
    models: "⊧",
    therefore: "∴",
    because: "∵",


    // Number theory.
    divides: (
        o:"∣", 
        "not": "∤",
    ),




     // Lowercase Greek.
     alpha: "α",
     beta: (
        o:"β", 
        alt: "ϐ",
     ),
     chi: "χ",
     delta: "δ",
     epsilon: (
        o:"ε", 
        alt: "ϵ",
     ),
     eta: "η",
     gamma: "γ",
     iota: "ι",
     kai: "ϗ",
     kappa: (
        o:"κ", 
        alt: "ϰ",
     ),
     lambda: "λ",
     mu: "μ",
     nu: "ν",
     ohm: (
        o:"Ω", 
        inv: "℧",
     ),
     omega: "ω",
     omicron: "ο",
     phi: (
        o:"φ", 
        alt: "ϕ",
     ),
     pi: (
        o:"π", 
        alt: "ϖ",
     ),
     psi: "ψ",
     rho:( 
        o:"ρ", 
        alt: "ϱ",
     ),
     sigma: "σ",
     tau: "τ",
     theta: (
        o:"θ", 
        alt: "ϑ",
     ),
     upsilon: "υ",
     xi: "ξ",
     zeta: "ζ",

     // Uppercase Greek.
     Alpha: "Α",
     Beta: "Β",
     Chi: "Χ",
     Delta: "Δ",
     Epsilon: "Ε",
     Eta: "Η",
     Gamma: "Γ",
     Iota: "Ι",
     Kai: "Ϗ",
     Kappa: "Κ",
     Lambda: "Λ",
     Mu: "Μ",
     Nu: "Ν",
     Omega: "Ω",
     Omicron: "Ο",
     Phi: "Φ",
     Pi: "Π",
     Psi: "Ψ",
     Rho: "Ρ",
     Sigma: "Σ",
     Tau: "Τ",
     Theta: "Θ",
     Upsilon: "Υ",
     Xi: "Ξ",
     Zeta: "Ζ",

     // Hebrew.
     alef: "א",
     bet: "ב",
     gimel: "ג",
     shin: "ש",

     // Double-struck.
     AA: "𝔸",
     BB: "𝔹",
     CC: "ℂ",
     DD: "𝔻",
     EE: "𝔼",
     FF: "𝔽",
     GG: "𝔾",
     HH: "ℍ",
     II: "𝕀",
     JJ: "𝕁",
     KK: "𝕂",
     LL: "𝕃",
     MM: "𝕄",
     NN: "ℕ",
     OO: "𝕆",
     PP: "ℙ",
     QQ: "ℚ",
     RR: "ℝ",
     SS: "𝕊",
     TT: "𝕋",
     UU: "𝕌",
     VV: "𝕍",
     WW: "𝕎",
     XX: "𝕏",
     YY: "𝕐",
     ZZ: "ℤ",

     // Miscellaneous letter-likes.
     ell: "ℓ",
     planck: (
        o:"ℎ", 
        reduce: "ℏ",
     ),
     angstrom: "Å",
     kelvin: "K",
     Re: "ℜ",
     Im: "ℑ",


)
