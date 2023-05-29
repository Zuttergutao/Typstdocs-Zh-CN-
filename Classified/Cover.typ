// 封面
#[  
    #set page(header:none,numbering:none)
    #set align(right)
    #set terms(separator:[: ])
    #place(
        right,
        dy:20%,
        text(weight:700,size:28pt)[一份(不太)简短的Typst介绍],  
    )
    #line(start:(0%,25%),end:(100%,25%),length:100%,stroke: 5pt)  
    #place(
        right,
        dy:2%,
        text(weight:400,style:"italic",size:16pt)[Typst官方文档中文翻译版],  
    )
    #place(
        right,
        dy:36%,
        text(weight:400,style:"italic",size:16pt)[中文翻译: Casea]
    )
    #place(
        right,
        dy:40%,
        text(weight:400,style:"italic",size:16pt)[版本: May 20, 2023]
    )
    #place(
        right,
        dy:44%,
        text(weight:400,style:"italic",size:16pt)[日期: May 28, 2023]
    )


]

#pagebreak()