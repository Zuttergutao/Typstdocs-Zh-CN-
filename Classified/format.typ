
// 设置block格式
#let blockk(term)=block(width:100%,inset: 7pt,radius:5pt,stroke: gray+1pt)[
    #set par(first-line-indent:0em)
    #text(weight:700,size:11pt,fill: rgb("#FF0000"),"#Demo") \
    #term
]