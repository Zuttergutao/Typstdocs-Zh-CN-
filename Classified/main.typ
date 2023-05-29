#import "format.typ":*

// 设置页面
#set page(
    paper:"a4",
    margin: (
        top:27.5mm,
        bottom:25.4mm,
        left:35.7mm,
        right:27.7mm
    ),
    header:[
        #set text(10pt)
        #h(1fr)
        #emph("Typst 中文文档 translated by Casea")
        #v(-0.8em)
        #line(length:100%,stroke:1pt)
    ],
    numbering:"1/1",
    number-align:center,
)
// 设置正文文字格式 
#set text(
    font:("Times New Roman","SimSun"),
    style:"normal",
    weight:"regular",
    size: 12pt,
)


// 设置段落
#set par(
    leading:20pt,
    justify: true,
    first-line-indent: 2em,
)


// 设置标题格式
#set heading(numbering: "1.1.1.1")
#show heading: it => locate(loc => {
    let levels = counter(heading).at(loc)
    let deepest = if levels != () {
        levels.last()
    } else {
        1
    }

    set text(12pt)
    if it.level == 1 [
        #if deepest !=1 {
            // pagebreak()
        }
        #set par(first-line-indent: 0pt)
        #set align(center)
        #let is-ack = it.body in ([Acknowledgment], [Acknowledgement])
        #set text(if is-ack { 15pt } else { 15pt },font:("Times New Roman","SimSun"))
        #v(36pt, weak: true)
        #if it.numbering != none and not is-ack {
        numbering("第 1 章", deepest)
        h(3pt, weak: true)
        }
        #it.body
        #v(36pt, weak: true)
    ] else if it.level == 2 [
        #set par(first-line-indent: 0pt)
        #set text(size:14pt,font:("Times New Roman","SimSun"))
        #v(24pt, weak: true)
        #if it.numbering != none {
        numbering("1.1 ",..levels)
        h(3pt, weak: true)
        }
        #it.body
        #v(24pt, weak: true)
    ] else if it.level == 3 [
        #set par(first-line-indent: 0pt)
        #set text(size:14pt,font:("Times New Roman","SimSun"))
        #v(15pt, weak: true)
        #if it.numbering != none {
        numbering("1.1.1 ",..levels)
        h(3pt, weak: true)
        }
        #it.body
        #v(15pt, weak: true)
    ] else [
        #set par(first-line-indent: 0pt)
        #set text(size:12pt,font:("Times New Roman","SimSun"))
        #v(12pt, weak: true)
        #if it.numbering != none {
        numbering("1.1.1.1 ",..levels)
        h(3pt, weak: true)
        }
        #it.body
        #v(12pt, weak: true) 
    ]
})

// 设置代码块样式


#show raw.where(block: false): box.with(
    fill: luma(240),
    inset: (x: 3pt, y: 0pt),
    outset: (y: 3pt),
    radius: 2pt,
) 

#show raw.where(lang:"typ"): it=>{
    block(width:100%,fill:luma(245),inset:10pt,radius: 5pt,stroke:0.8pt+rgb("#00B7FF").darken(10%))[
        #par(leading: 1em,
            justify:true,
            linebreaks: "optimized",
            first-line-indent: 0em,
            text(font: "Monospac821 BT",
                style: "normal",
                weight:"regular",
                size:10pt,
                spacing: 100%,
                text(font: "Inria Serif", weight:700,size:11pt,fill: rgb("#FF0000"),"#Code") + it
                ) 
            )
    ]
}


#show raw.where(lang:"para"): it=>{
    block(width:100%,fill:luma(245),inset:10pt,radius: 5pt,stroke:0.8pt+rgb("#000000").darken(10%))[
        #par(leading: 1em,
            justify:true,
            linebreaks: "optimized",
            first-line-indent: 0em,
            text(font: "Inria Serif",
                style: "normal",
                weight:"regular",
                size:10pt,
                spacing: 200%,
                text(font: "Inria Serif",weight:700,size:11pt,fill: rgb("#FF0000"),"#Func") + it
                )
            )
    ]
}


#include "Cover.typ"

#include "Abstract.typ"

#include "changelogs.typ"

#include "outlines.typ"

#include "Part I.typ"

#include "Part II.typ"

#include "Part III.typ"

#include "Symbol.typ"



