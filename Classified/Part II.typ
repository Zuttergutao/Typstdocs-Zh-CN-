#import "format.typ":*

#[
    #set heading(numbering: none)
    #show heading: it => block[
        #set align(center)
        #set text(size:28pt,weight:700)
        #it.body
    ]
    = Part II 简明教程

]

// align
= 内容对齐


```para
// 水平/垂直对直内容
align(
    set alignment 2d alignment, 
    // 沿两个轴排列 横向排列：start end left center right 
    // 竖向排列：top horizon bottom, 使用+号实现横向竖向排列设置
    content,
) -> content
```

```typ
#align(center)[#lorem(10)]
#align(right)[#lorem(10)]
#align(left)[#lorem(10)]
#align(center+top)[#lorem(10)]
```


#[
    #show:blockk
    #align(center)[#lorem(10)]
    #align(right)[#lorem(10)]
    #align(left)[#lorem(10)]
    #align(center+top)[#lorem(10)]
]


= 图片插入
<image>

 
```para
带有标题的图片及引用
figure(
    content,                                       // 图片内容
    set caption: `none` `content`,                 // 图片标题
    set numbering: `none` `string` `function`,     // 图片标号
    set gap: `length`,                             // 图片与标题之间的距离
) -> content
```


```para
图片
image(
    `string`,                                    // 图片路径
    set width: `auto` `relative length`,         // 图片宽度
    set height: `auto` `relative length`,        // 图片高度
    set alt: `none` `string`                     // 图片描述
    set fit: `string`,                           
    // 如何自动调节：cover（默认，完全覆盖整个区域）、
    // contain（完全包含整个区域）、stretch（拉伸图象以完全填满）
) -> content 
```

```typ
@gege shows the right pose of playing basketball

#figure(
    image("1.png",height:20%),
    caption: [
         Playing basketball.
    ],
    numbering: "1",
) <gege>
```

#[
    #show:blockk
    @gege shows the right pose of playing basketball

    #figure(
        image("1.png",height:23%),
        caption: [
            Playing basketball.
        ],
        numbering: "1",
    ) <gege>
]


#pagebreak()

= 盒子创建

盒子的创建对于页面布局十分有用。

```para
内联级的container，除了公式、文字、box之外所有的元素都是block级的，不能出现在一个段落中
box可以用来将元素整合到一个段落中
box(
    set width: `auto` `relative length` `fraction`,  // 盒子宽度
    set height: `auto` `relative length`,       // 盒子高度
    set baseline: `relative length`,            // 盒子基线
    set fill: `none` `color`,                   // 背景颜色
    set stroke: `none` `length` `color` `dictionary` `stroke`,    // 盒子边界
    set radius: `relative length` `dictionary`,                   // 盒子圆角半径
    set inset: `relative length` `dictionary`,             // 内容距离盒子边界距离
    set outset: `relative length` `dictionary`,            // 盒子外扩值
    set `none` `content`,
) -> content
```

```typ
Image with baseline 50%: 
#box(width:auto,
     height: 10%,
     baseline: 50%,
     stroke: gray+2pt,
     radius:5pt,
     inset: 1pt,
     outset: 1pt,
     image("1.png")
    )
```

#[
    #show:blockk
    Image with baseline 50%: 
    #box(width:auto,
        height: 12%,
        baseline: 50%,
        stroke: gray+2pt,
        radius:5pt,
        inset: 1pt,
        outset: 1pt,
        image("1.png")
        )
]


#set page(columns:2)


= 强制分栏 

```para
强制分栏,当在单列布局或页面的最后一列中使用时,该函数将表现得像pagebreak()。否则，分栏后的内容将被放置在下一栏。
在此处可以看到Typst处理中文文字间距时还不是很完美空格判定有缺陷。
colbreak(
    set weak: boolean
) -> content
```

```typ
Preliminary findings from our ..
使用\#colbreak()强制换列

#colbreak()
Through rigorous experimentation ..
需要注意到，此处的省略号只有两个，那是因为如果使用三个省略号中文将会出现乱码情况。
```
#[
    #show:blockk
    Preliminary findings from our
    ongoing research project have
    revealed a hitherto unknown
    phenomenon of extraordinary
    significance. \
    使用\#colbreak()强制换列

    #colbreak()
    Through rigorous experimentation
    and analysis, we have discovered
    a hitherto uncharacterized process
    that defies our current
    understanding of the fundamental
    laws of nature.
]


= 设置列数

```para
#pagebreak()可以强制换页
#set page(columns:2)可以设置页面列数
分栏，将一个区域分割成多个相同大小的列，不会分配列的高度，列可以跨页断开
columns(
    set integer,    // 列数目
    set gutter: `relative length`, 
    // 每列之间的间距
    content,   
) -> content
```

```typ
#box(height:150pt,columns(2, gutter: 20pt)[
   #set par(justify: true)
   This research was funded by the National Academy of Sciences. NAoS provided support for field tests and interviews with a grant of up to USD 40.000 for a period of 6 months. 
 ]
)
In recent years, deep learning has increasingly been used to solve a variety of problems.
```
#[
    #show:blockk
    #box(height:150pt,columns(2, gutter: 20pt)[
    #set par(justify: true)
        This research was funded by the National Academy of Sciences. NAoS provided support for field tests and interviews with a grant of up to USD 40.000 for a period of 6 months. 
        ]
    )
    In recent years, deep learning has increasingly been used to solve a variety of problems.
]


// enum
= 有序列表 <enum>

enum用于创建有序无序列表以及连续编号,enum函数也有专门的语法糖:
以+起行,创建一个自动编号的枚举项目.
以数字和.开头的一行将创建一个明确编号的枚举项目.
枚举项目可以包含多个段落和其他块级内容.所有缩进超过一个项目的+或.的内容都成为该项目的一部分。

#colbreak()

```typ
enum(
    set tight: `boolean`,                     
    // 紧凑显示
    set numbering: `string` `function`,          
    // 如何编号
    set start: `integer`,                     
    // 编号起始值
    set full: `boolean`,                      
    // 是否显示全部编号
    set indent: `length`,                     
    // 每个元素的缩进
    set body-indent: `length`,                
    // 编号与内容之间的间距
    set spacing: `auto` `relative length` `fraction`,  
    // 行间距
    ..contentarray,
) -> content
```

```typ
#block(fill:gray,width:100%,
        inset:5pt,radius:5pt)[
    Automatically numbered:
    + Preparations
    + Analysis
    Manually numbered:
    2. What is the first step?
    5. I am confused.
    +  Moving on ...
    Function call.
    #enum[First][Second]
]
```
#colbreak()
#[
    #show:blockk
    #block(fill:gray,width:100%,
            inset:5pt,radius:5pt)[
        Automatically numbered:
        + Preparations
        + Analysis

        Manually numbered:
        2. What is the first step?
        5. I am confused.
        +  Moving on ...

        Function call.
        #enum[First][Second]
    ]
]


```typ
#block(fill:green,width:100%,
        radius:5pt)[
    #set enum(numbering: "a)")

    + Starting off ...
    + Don't forget step two
]
```

#[
    #show:blockk
    #block(fill:green,width:100%,inset:5pt,radius:5pt)[
        #set enum(numbering: "a)")

        + Starting off ...
        + Don't forget step two
    ]
]

```typ
#block(fill:rgb("#b1f2eb"),
       width:100%,
       inset:5pt,
       radius:5pt)[
    #set enum(numbering: "1.a)")
    + Different
    + Numbering
        + Nested
        + Items
    + Style

    #set enum(numbering: n => super[#n])
    + Superscript
    + Numbering!

    #enum(
    start: 3,
    numbering: "a.",
    [Skipping],
    [Ahead],
    )
]
```

#[
    #show:blockk
    #block(fill:rgb("#b1f2eb"),
        width:100%,
        inset:5pt,
        radius:5pt)[
        #set enum(numbering: "1.a)")
        + Different
        + Numbering
            + Nested
            + Items
        + Style

        #set enum(numbering: n => super[#n])
        + Superscript
        + Numbering!

        #enum(
        start: 3,
        numbering: "a.",
        [Skipping],
        [Ahead],
        )
    ]
]

#colbreak()

```typ
#block(fill:rgb("#b1f2eb"),
       width:100%,inset:5pt,
       radius:5pt)[
    #enum(
    start: 3,
    numbering: "a.",
    [Skipping],
    [Ahead],
    )
]
```

#block(fill:rgb("#b1f2eb"),
       width:100%,inset:5pt,radius:5pt)[
    #enum(
    start: 3,
    numbering: "a.",
    [Skipping],
    [Ahead],
    )
]

```typ
#block(fill:rgb("#b122eb"),
       width:100%,inset:5pt,
       radius:5pt)[
#set enum(numbering: "1.a)", full: true)
    + Cook
        + Heat water
        + Add integredients
    + Eat
]
```

#block(fill:rgb("#b122eb"),
       width:100%,inset:5pt,radius:5pt)[
    #set enum(numbering: "1.a)", full: true)
    + Cook
        + Heat water
        + Add integredients
    + Eat
]

#pagebreak()
#set page(columns:1)

// Grid

= 网格排版 <grid>

在网格中排版内容. grid允许将内容安排在一个grid中. 可以定义行和列的数量, 以及它们之间的间距. 有多种列和行的模式, 可以用来创建复杂的布局.
```para
grid(
    set columns: `auto` `integer` `relative length` `fraction` `array`,      
    // 列数
    set rows: `auto` `integer` `relative length` `fraction` `array`,         
    // 行数
    set gutter: `auto` `integer` `relative length` `fraction` `array`,       
    // 行或列间距
    set column-gutter: `auto` `integer` `relative length` `fraction` `array`,   
    // 列间距，优先级高于gutter
    set row-gutter: `auto` `integer` `relative length` `fraction` `array`,     
    // 行间距，优先级高于gutter
    ..content,
) -> content
```

```typ
#let cell = rect.with(
  inset: 8pt,
  fill: rgb("e4e5ea"),
  width: 100%,
  radius: 6pt
)
#grid(
  columns: (60pt, 1fr, 60pt),
  rows: (60pt, auto),
  gutter: 3pt,
  cell(height: 100%)[Easy to learn],
  cell(height: 100%)[Great output],
  cell(height: 100%)[Intuitive],
  cell[Our best Typst yet],
  cell[
    Responsive \ design in \ print
    for everyone
  ],
  cell[One more thing...],
)
```

#[
    #show:blockk
    #let cell = rect.with(
    inset: 8pt,
    fill: rgb("e4e5ea"),
    width: 100%,
    radius: 6pt
    )
    #grid(
    columns: (60pt, 1fr, 60pt),
    rows: (60pt, auto),
    gutter: 3pt,
    cell(height: 100%)[Easy to learn],
    cell(height: 100%)[Great output],
    cell(height: 100%)[Intuitive],
    cell[Our best Typst yet],
    cell[
        Responsive \ design in \ print
        for everyone
    ],
    cell[One more thing...],
    )
]

== Figure、Grid结合绘制子图

```typ
#let subfigure(body, caption: "", numbering: "(a)") = {
  let figurecount = counter(figure) 
  let subfigurecount = counter("subfigure") 
  let subfigurecounterdisply = counter("subfigurecounter") 
  let number = locate(loc => {
    let fc = figurecount.at(loc)
    let sc = subfigurecount.at(loc)
    if fc == sc.slice(0,-1) {
      subfigurecount.update(
        fc + (sc.last()+1,)
      ) 
      subfigurecounterdisply.update((sc.last()+1,)) 
    } else {
      subfigurecount.update( fc + (1,)) 
      subfigurecounterdisply.update((1,)) 
    }
    subfigurecounterdisply.display(numbering) 
  })
  body 
  v(-.65em) 
  if not caption == none {
    align(center)[#number #caption] 
  }
}
#figure(
  grid(columns: 3, gutter: 2em,
    subfigure(image("1.png", width: 50%)),
    subfigure(image("1.png", width: 50%)),
    subfigure(image("1.png", width: 50%), caption: "Test Caption")
  ),
  caption: "Test caption"
)
#v(2em)
#figure(
    grid(
        columns: (1fr, 1fr, 1fr),
        rows: (auto, auto),
        gutter: 1pt,
        image("1.png",width:50%),
        image("1.png",width:50%),
        image("1.png",width:50%),
        image("1.png",width:50%),
        image("1.png",width:50%),
        image("1.png",width:50%),
    ),
    numbering: "1",
    caption: [
        SubFigures.
    ]
)
```
#pagebreak()

#[
    #show:blockk

    #let subfigure(body, caption: "", numbering: "(a)") = {
    let figurecount = counter(figure) 
    let subfigurecount = counter("subfigure") 
    let subfigurecounterdisply = counter("subfigurecounter") 
    let number = locate(loc => {
        let fc = figurecount.at(loc)
        let sc = subfigurecount.at(loc)

        if fc == sc.slice(0,-1) {
        subfigurecount.update(
            fc + (sc.last()+1,)
        ) 
        subfigurecounterdisply.update((sc.last()+1,)) 
        } else {
        subfigurecount.update( fc + (1,)) 
        subfigurecounterdisply.update((1,)) 
        }
        subfigurecounterdisply.display(numbering) 
    })
    
    body 
    v(-.65em) 
    if not caption == none {
        align(center)[#number #caption] 
    }
    }

    #figure(
    grid(columns: 3, gutter: 2em,
        subfigure(image("1.png", width: 40%)),
        subfigure(image("1.png", width: 40%)),
        subfigure(image("1.png", width: 40%), caption: "Test Caption")
    ),
    caption: "Test caption"
    )

    #v(2em)

    #figure(
        grid(
            columns: (1fr, 1fr, 1fr),
            rows: (auto, auto),
            gutter: 1pt,
            image("1.png",width:35%),
            image("1.png",width:35%),
            image("1.png",width:35%),
            image("1.png",width:35%),
            image("1.png",width:35%),
            image("1.png",width:35%),
        ),
        numbering: "1",
        caption: [
            SubFigures.
        ]
    )
]

// #pagebreak()
