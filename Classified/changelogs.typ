// 更新历史
#[  
    #set page(header:none,numbering:none)
    #set par(first-line-indent:0em)
    #set align(center)
    #text(weight:700,size:20pt)[Change logs]
    #set align(left)
    #set list(marker: ([•], [-]))
    - *2023.05.20 Version 0.4.0:*
        - 添加对footnote的支持。
        - 添加对LaTex用户的指南
        - 注：一些笔者认为的小修改并未加入到此手册中。
    - *2023.04.26 Version 0.3.0:*
        - 重命名了一些符号：`dot.op->dot` `dot->dpt.basic` `ast`和`tlide`同理。
        - 将`mod`重命名为`rem`，目前`mod`仍可使用，直到版本更新。
        - 移除`query`函数的`before`和`after`定位参数，改用`selector()`函数进行定位。`query(heading,before:loc)` -> `query(selector(heading).before(loc),loc)`
        - `bottom`和`top`重命名为`b`和`t`,支持左右上下标。
        - 支持删除线样式。支持pdf大纲显示。

    - *2023.04.22:*
        - loops取消了对index和value的迭代，现在可以通过unpacking和enumerating处理。map()方法同理。目前的写法`(index,value) in keys.enumerate()`。
        - 字典方法现在可以使用插入顺序而不是字母顺序。
        - 新增了`unpacking(),enumerate(),path,layout,sorted()`method。
        - 添加了`New Computer Modern`字体。
    - *2023.04.09:*
        - 对于源码部分使用等宽字体`Monospac821 BT`，感谢supernova的建议。
        - 对标题进行了部分汉化，但是是缺少一点味道。
        - 附录添加了symbol速查表。
    - *2023.04.05:*
        - 2023/04/04 typst推出了v0.1的正式版本，修正了编号问题（目前从0开始）。在我看来其最大的改进就是中文排版的优化（并不支持斜体加粗等格式）。
        - 2023/4/5 14:07:58 已完成官方文档的翻译，但是总觉得还缺点什么。想了想那便是自己的理解吧：单纯翻译文档谁都可以做，但是如何使文档更加通俗易懂以及让人快速上手就需要下一点功夫了。
        - 接下来的安排：使用show set规则将typ文件大幅缩短（预计一半篇幅）；文章结构（调整章节顺序，语句修改）；优化排版（力气活 \u{1F921}）。

        
]

#pagebreak()