#set page(
    paper:"a4",
    margin: (
        top:27.5mm,
        bottom:25.4mm,
        left:35.7mm,
        right:27.7mm
    ),
    numbering:"1",
    number-align:center,
)

#set text(
    font:("Times New Roman","SimSun"),
    style:"normal",
    weight:"regular",
    size: 12pt,
)

#set par(
    leading:20pt,
    justify: true,
    first-line-indent: 2em,
) 

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
            pagebreak()
        }
        #set par(first-line-indent: 0pt)
        #let is-ack = it.body in ([Acknowledgment], [Acknowledgement])
        #set align(center)
        #set text(if is-ack { 15pt } else { 15pt },font:"SimHei")
        #v(36pt, weak: true)
        #if it.numbering != none and not is-ack {
        numbering("第1章.", deepest)
        h(7pt, weak: true)
        }
        #it.body
        #v(36pt, weak: true)
    ] else if it.level == 2 [
        #set par(first-line-indent: 0pt)
        #set text(size:14pt,font:"SimHei")
        #v(24pt, weak: true)
        #if it.numbering != none {
        numbering("1.1.",..levels)
        h(7pt, weak: true)
        }
        #it.body
        #v(24pt, weak: true)
    ] else if it.level == 3 [
        #set par(first-line-indent: 0pt)
        #set text(size:14pt,font:"SimHei")
        #v(15pt, weak: true)
        #if it.numbering != none {
        numbering("1.1.1.",..levels)
        h(7pt, weak: true)
        }
        #it.body
        #v(15pt, weak: true)
    ] else [
        #set par(first-line-indent: 0pt)
        #set text(size:12pt,font:"SimHei")
        #v(12pt, weak: true)
        #if it.numbering != none {
        numbering("1.1.1.1.",..levels)
        h(7pt, weak: true)
        }
        #it.body
        #v(12pt, weak: true) 
    ]
})


= 一级标题
//每页第一行的段落不会被缩进，需要额外设置
// #h(2em)两个字符的空格
#h(2em)#lorem(30) \
== 二级标题
chatgpt:阳光明媚的早晨，一只小鸟在树枝上欢快地唱着歌，远处传来了儿童的欢笑声，空气中弥漫着花香和新鲜的草味，这是一个充满生机和活力的日子。突然间，一阵微风吹来，树叶沙沙作响，让人感到一阵舒爽。这个美好的早晨让人心情愉悦，让人感受到大自然的魅力和美妙。\
=== 三级标题
== 二级标题
=== 三级标题
#lorem(30) \
==== 四级标题
==== 四级标题
#lorem(30) \
= 一级标题
== 二级标题
=== 三级标题
==== 四级标题
