#let symm=(
    // Control.
    wj: "\u{2060}",
    zwj: "\u{200D}",
    zwnj: "\u{200C}",
    zws: "\u{200B}",

    // Spaces.
    space:(
        nobreak: "\u{A0}",
        en: "\u{2002}",
        quad: "\u{2003}",
        third: "\u{2004}",
        quarter: "\u{2005}",
        sixth: "\u{2006}",
        med: "\u{205F}",
        fig: "\u{2007}",
        punct: "\u{2008}",
        thin: "\u{2009}",
        hair: "\u{200A}",
    ),

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
              broken: "¦", 
              circle: "⦶"),   
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
        right: (
            o:"∟",
            rev: "⯾",
            arc: "⊾",
            dot: "⦝",
            sq: "⦜",
        ),
        spatial: "⟀",
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
        low: "⁎",
        basic: "\u{002A}",
        double: "⁑",
        triple: "⁂",
        small: "﹡",
        op: "\u{2217}",
        circle: "⊛",
        sq: "⧆",
    ),
    at: "@",
    backslash: (
        o:"\\", 
        circle: "⦸", 
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
        circle: "⊝",
    ),
    ),
    dot: (
        o:".",
        op: "\u{22C5}",
        c: "·",
        basic: "\u{002E}",
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
    copyright: (
        o:"©", 
        sound: "℗",
    ),
    permille: "‰",
    pilcrow: (
        o:"¶", 
        rev: "⁋",
    ),
    section: "§",
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
        v: "⋮", 
        down: "⋱", 
        up: "⋰",
    ),
    tilde: (
        o:"~",
        op: "∼",
        basic: "\u{007E}",
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
        rev: (
            o:"∽",
            eqq: "≌",
        ),
        triple: "≋",
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
    plus: (
        o:"+",
        circle: (
            o:"⊕",
            arrow: "⟴",
            big: "⨁",
        ),
        dot: "∔",
        minus: "±",
        small: "﹢",
        square: "⊞",
        triangle: "⨹",
    ),
    minus: (
        o:"−",
        circle: "⊖",
        dot: "∸",
        plus: "∓",
        square: "⊟",
        tilde: "≂",
        triangle: "⨺",
    ),
    div: (
        o:"÷", 
        circle: "⨸",
    ),
    times: (
        o:"×",
        big: "⨉",
        circle: (
            o:"⊗",
            big: "⨂",
        ),
        div: "⋇",
        l: "⋋",
        r: "⋌",
        square: "⊠",
        triangle: "⨻",
    ),
    ratio: "∶",


// Relations.
    eq: (
        o:"=",
        star: "≛",
        circle: "⊜",
        colon: "≕",
        def: "≝",
        delta: "≜",
        equi: "≚",
        est: "≙",
        gt: "⋝",
        lt: "⋜",
        m: "≞",
        "not": "≠",
        prec: "⋞",
        quest: "≟",
        small: "﹦",
        succ: "⋟",
    ),
    gt: (
        o:">",
        circle: "⧁",
        dot: "⋗",
        double: "≫",
        eq: (
            o:"≥",
            lt: "⋛",
            "not": "≱",
        ),
        eqq: "≧",
        lt: (
            o:"≷",
            "not": "≹",
        ),
        neqq: "≩",
        "not": "≯",
        ntilde: "⋧",
        small: "﹥",
        tilde: (
            o:"≳",
            "not": "≵",
        ),
        triple: (
            o:"⋙",
            nested: "⫸",
        ),
    ),
    lt: (
        o:"<",
        circle: "⧀",
        dot: "⋖",
        double: "≪",
        eq: (
            o:"≤",
            gt: "⋚",
            "not": "≰",
        ),
        eqq: "≦",
        gt:(
            o:"≶",
            "not": "≸",
        ),
        neqq: "≨",
        "not": "≮",
        ntilde: "⋦",
        small: "﹤",
        tilde: (
            o:"≲",
            "not": "≴",
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
        napprox: "⪹",
        neqq: "⪵",
        "not": "⊀",
        ntilde: "⋨",
        tilde: "≾",
    ),
    succ: (
        o:"≻",
        approx: "⪸",
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
    qed: "∎",

    // Function and category theory.
    compose: "∘",
    convolve: "∗",
    multimap: "⊸",

    // Number theory.
    divides: (
        o:"∣", 
        "not": "∤",
    ),
    perp: (
        o:"⟂", 
        circle: "⦹",
    ),

    // Geometry.
    parallel: (
        o:"∥", 
        circle: "⦷", 
        "not": "∦",
    ),

    // Miscellaneous Technical.
    diameter: "⌀",
    join: (
        o:"⨝",
        r: "⟖", 
        l: (
            o:"⟕", 
            r: "⟗",
        ),
    ),
    degree: (
        o:"°", 
        c: "℃", 
        f: "℉",
    ),
    smash: "⨳",
    wreath: "≀",

    // Currency.
    bitcoin: "₿",
    dollar: "$",
    euro: "€",
    franc: "₣",
    lira: "₺",
    peso: "₱",
    pound: "£",
    ruble: "₽",
    rupee: "₹",
    won: "₩",
    yen: "¥",

    // Miscellaneous.
    ballot: (
        o:"☐", 
        x: "☒",
    ),
    checkmark: (
        o:"✓", 
        light: "🗸",
    ),
    floral: (
        o:"❦", 
        l: "☙", 
        r: "❧",
    ),
    notes: (
        up: "🎜", 
        down: "🎝",
    ),
    refmark: "※",
    servicemark: "℠",
    maltese: "✠",
    suit: (
        club: "♣", 
        diamond: "♦", 
        heart: "♥", 
        spade: "♠",
    ),

       // Shapes.
    circle: (
        stroked: (
            o:"○",
            tiny: "∘",
            small: "⚬",
            big: "◯",
        ),
        filled: (
            o:"●",
            tiny: "⦁",
            small: "∙",
            big: "⬤",
        ),
        dotted: "◌",
        nested: "⊚",
    ),
    ellipse: (
        stroked:(
            h: "⬭",
            v: "⬯",
        ),
        filled:(
            h: "⬬",
            v: "⬮",
        ),
    ),
    triangle: (
        stroked:(
            r: "▷",
            l: "◁",
            t: "△",
            b: "▽",
            bl: "◺",
            br: "◿",
            tl: "◸",
            tr: "◹",
            small:(
                r: "▹",
                b: "▿",
                l: "◃",
                t: "▵",
            ),

            rounded: "🛆",
            nested: "⟁",
            dot: "◬",
        ),
        filled:(
            r: "▶",
            l: "◀",
            t: "▲",
            b: "▼",
            bl: "◣",
            br: "◢",
            tl: "◤",
            tr: "◥",
            small:(
                r: "▸",
                b: "▾",
                l: "◂",
                t: "▴",
            ),
        ),
    ),
    square: (
        stroked:(
            o: "□",
            tiny: "▫",
            small: "◽",
            medium: "◻",
            big: "⬜",
            dotted: "⬚",
            rounded: "▢",
        ),
        filled:(
            o:"■",
            tiny: "▪",
            small: "◾",
            medium: "◼",
            big: "⬛",
        ),
    ),
    rect: (
        stroked:(
            h: "▭",
            v: "▯",
        ),
        filled:(
            h: "▬",
            v: "▮",
        ),
    ),
    penta: (
        stroked: "⬠", 
        filled: "⬟",
    ),
    hexa: (
        stroked: "⬡", 
        filled: "⬢",
    ),
    diamond: (
        stroked:(
            o: "◇",
            small: "⋄",
            medium: "⬦",
            dot: "⟐",
        ),
        filled: (
            o:"◆",
            medium: "⬥",
            small: "⬩",
        ),
    ),
    lozenge: (
        stroked: (
            o:"◊",
            small: "⬫",
            medium: "⬨",
        ),
        filled: (
            o:"⧫",
            small: "⬪",
            medium: "⬧",
        ),
    ),
    star: (
        op: "⋆", 
        stroked: "★", 
        filled: "★",
    ),


    // Arrows, harpoons, and tacks.
    arrow: (
        r: (
            o:"→",
            long:(
                o:"⟶",
                squiggly: "⟿",
                bar: "⟼",
            ),
            bar: "↦",
            curve: "⤷",
            dashed: "⇢",
            dotted: "⤑",
            double: (
                o:"⇒",
                bar: "⤇",
                long:(
                    o:"⟹",
                    bar: "⟾",
                ), 
                "not": "⇏",
            ),
            filled: "➡",
            hook: "↪",
            loop: "↬",
            "not": "↛",
            quad: "⭆",
            squiggly: "⇝",
            stop: "⇥",
            stroked: "⇨",
            tail: "↣",
            triple: "⇛",
            twohead:(
                bar: "⤅",
                o: "↠",
            ),
            wave: "↝",
        ),
        l:(
            o:"←",
            bar: "↤",
            curve: "⤶",
            dashed: "⇠",
            dotted: "⬸",
            double: (
                o:"⇐",
                bar: "⤆",
                long: (
                    o:"⟸",
                    bar: "⟽",
                ),
                "not": "⇍",
            ),
            filled: "⬅",
            hook: "↩",
            long: (
                o:"⟵",
                bar: "⟻",
                squiggly: "⬳",
            ),
            loop: "↫",
            "not": "↚",
            quad: "⭅",
            squiggly: "⇜",
            stop: "⇤",
            stroked: "⇦",
            tail: "↢",
            triple: "⇚",
            twohead:(
                bar: "⬶",
                o:"↞",
            ),
            wave: "↜",
            r: (
                o:"↔",
                double: (
                    o:"⇔",
                    long: "⟺",
                    "not": "⇎",
                ),
                filled: "⬌",
                long: "⟷",
                "not": "↮",
                stroked: "⬄",
                wave: "↭",
            ),

        ), 
        
        t:(
            o:"↑",
            bar: "↥",
            curve: "⤴",
            dashed: "⇡",
            double: "⇑",
            filled: "⬆",
            quad: "⟰",
            stop: "⤒",
            stroked: "⇧",
            triple: "⤊",
            twohead: "↟",
            b: (
                o:"↕",
                double: "⇕",
                filled: "⬍",
                stroked: "⇳",
            ),
        ), 
        b: (
            o:"↓",
            bar: "↧",
            curve: "⤵",
            dashed: "⇣",
            double: "⇓",
            filled: "⬇",
            quad: "⟱",
            stop: "⤓",
            stroked: "⇩",
            triple: "⤋",
            twohead: "↡",
        ),


        tr: (
            o:"↗",
            double: "⇗",
            filled: "⬈",
            hook: "⤤",
            stroked: "⬀",
            bl: "⤢",
        ),
        br: (
            o:"↘",
            double: "⇘",
            filled: "⬊",
            hook: "⤥",
            stroked: "⬂",
        ),
        tl: (
            o:"↖",
            double: "⇖",
            filled: "⬉",
            hook: "⤣",
            stroked: "⬁",
            br: "⤡",
        ),
        bl: (
            o:"↙",
            double: "⇙",
            filled: "⬋",
            hook: "⤦",
            stroked: "⬃",
        ),
        ccw: (
            o:"↺",
            half: "↶",
        ),
        cw: (
            o:"↻",
            half: "↷",
        ),
        zigzag: "↯",
    ),

    arrows: (
        rr: "⇉",
        ll: "⇇",
        tt: "⇈",
        bb: "⇊",
        lr: (
            o:"⇆",
            stop: "↹",
        ),
        rl: "⇄",
        tb: "⇅",
        bt: "⇵",
        rrr: "⇶",
        lll: "⬱",
    ),
    arrowhead: (
        t: "⌃",
        b: "⌄",
    ),
    harpoon: (
        rt: (
            o:"⇀",
            bar: "⥛",
            stop: "⥓",
        ),
        rb: (
            o:"⇁",
            bar: "⥟",
            stop: "⥗",
        ),
        lt: (
            o:"↼",
            bar: "⥚",
            stop: "⥒",
            rt: "⥎",
            rb: "⥊",
        ),
        lb: (
            o:"↽",
            bar: "⥞",
            stop: "⥖",
            rb: "⥐",
            rt: "⥋",
        ),
        tl: (
            o:"↿",
            bar: "⥠",
            stop: "⥘",
            bl: "⥑",
            br: "⥍",
        ),
        tr: (
            o:"↾",
            bar: "⥜",
            stop: "⥔",
            br: "⥏",
            bl: "⥌",
        ),
        bl: (
            o:"⇃",
            bar: "⥡",
            stop: "⥙",
        ),
        br: (
            o:"⇂",
            bar: "⥝",
            stop: "⥕",
        ),
    ),

    harpoons: (
        rtrb: "⥤",
        blbr: "⥥",
        bltr: "⥯",
        lbrb: "⥧",
        ltlb: "⥢",
        ltrb: "⇋",
        ltrt: "⥦",
        rblb: "⥩",
        rtlb: "⇌",
        rtlt: "⥨",
        tlbr: "⥮",
        tltr: "⥣",
    ),
    tack: (
        r: (
            o:"⊢",
            long: "⟝",
        ),
        l: (
            o:"⊣",
            long: "⟞",
            short: "⫞",
            r: "⟛",
        ),
        t: (
            o:"⊥",
            big: "⟘",
            double: "⫫",
            short: "⫠",
        ),
        b: (
            o:"⊤",
            big: "⟙",
            double: "⫪",
            short: "⫟",
        ),
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
