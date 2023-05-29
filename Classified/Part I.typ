#import "format.typ":*
#counter(page).update(1)
#[
    #set heading(numbering: none)
    #show heading: it => block[
        #set align(center)
        #set text(size:28pt,weight:700)
        #it.body
    ]
    = Part I Guide for LaTex Users
]

#[

#set heading(numbering: none)


= 前言

此部分将会简明的介绍LaTeX和Typst的差异之处，并使LaTeX玩家快速上手Typst。

就像LaTeX，Typst是一个基于标记的排版系统。你可以在文本文件中编写文档，并使用命令和语法进行标记。然后使用编译器将源文件排版为PDF格式。然而，Typst在以下几个方面不同于LaTeX：一方面，Typst 使用更专用的语法（就像您可能从 Markdown 中了解到的那样）用于常见任务。 Typst 的命令也更有原则性：它们的工作原理相同，因此与 LaTeX 不同，您只需要了解几个通用概念，而不是学习每个包的不同约定。此外，Typst 的编译速度比 LaTeX 快：编译通常需要几毫秒，而不是几秒钟，因此 Web 应用程序和编译器都可以提供即时预览。

我们将在下文介绍从 LaTeX 转换过来的用户在使用 Typst 编写文档时遇到的一些最常见的问题。如果您更喜欢 Typst 的分步介绍，请查看我们的教程。

= 创建文档

就像LaTeX创建`.tex`文件一样，Typst只需要创建`.typ`文件即可。无需提供模板文件。默认情况使用的是A4大小的页面，如果使用web版，只需要单击`+ Empty document`，就可以创建项目并进入编辑器。和LaTeX一样只需要使用空行就可以实现段落。

= 如何创建章标题，强调？

LaTeX使用命令`\section`、`\subsection`、`\subsubsection`创建章标题与子标题。根据写作内容的不同，还支持`\part`和`\chapter`。

在Typst中，标题的表现形式十分简约：`= Introduction`、`== In this paper`。标题的深度取决于你使用了多少个等号`=`。

内容强调通常以斜体文本的形式呈现，通过将文本括在下划线中表示\(`_underscores_`\)，着重强调使用粗体表示\(`*stars*`\)。

如下表格为LaTeX命令与Typst命令的对比。也可以查看完整的cheatsheet。

#table(
    columns:(auto,auto,auto,auto),
    inset:10pt,
    align:horizon,
    [*Element*],[*LaTeX*],[*Typst*],[*See*],
    [Strong emphasis],[\textbf{strong}],[*strong*],[@strong],
    [Emphasis],[\emph{emphasis}],[_emphasis_],[@emph],
    [Monospace  code],[\texttt{print(1)}],[`print(1)`],[@raw],
    [Link],[\url{https://typst.app}],[https://typst.app/],[@link],
    [Label],[\label{intro}],[\<intro\>],[@label],
    [Reference],[\ref{intro}],[\@intro],[@ref],
    [Citation],[\cite{humphrey97}],[\@humphrey97],[@cite],
    [Bullet list],[itemize environment],[- List],[@list],
    [Numbered list],[enumerate environment],[\+ List],[@enum],
    [Term list],[description environment],[\/ Term: List],[@terms],
    [Figure],[figure environment],[figure function],[@image],
    [Table],[table environment],[table function],[@table],
    [Equation],[\$x\$, align / equation environments],[\$x\$, \$ x = y \$],[@equation],
)

Typst中Lists不依赖于环境。相反的，他们具有像标题一样的轻量化语法。如果需要创建无序列表，只需要在列表项前面加连字符。

```typ
To write this list in Typst...
```

```latex
\begin{itemize}
  \item Fast
  \item Flexible
  \item Intuitive
\end{itemize}
```

```typ
...just type this:
- Fast
- Flexible
- Intuitive
```

#[
    #show:blockk
    To write this list in Typst...

    ```latex
    \begin{itemize}
    \item Fast
    \item Flexible
    \item Intuitive
    \end{itemize}
    ```

    ...just type this:

    - Fast
    - Flexible
    - Intuitive
]

通过将它们缩进到连字符之外，您还可以在单​​个列表项中包含多个段落或嵌套列表。如果列表项变得更长，最好在列表项之间放置空行。这会增加列表项之间的间距。
要改为获取编号列表（枚举），请使用 + 而不是连字符。对于术语列表（描述），写 `/ Term: Description` 代替。

= 命令

LaTeX 严重依赖命令（以反斜杠为前缀）。它使用这些宏来影响排版过程以及插入和操作内容。一些命令接受参数，最常见的是它们被括在花括号中：`\cite{rasmus}`。

Typst 区分标记模式和代码模式。标记模式是默认设置，您可以在其中编写文本并使用语法结构，例如`*`星号表示粗体文本。代码模式类似于 Python 等其他编程语言，允许您编写类似 `1 + 2 == 3` 的代码。

在 Typst 的标记中，您可以使用井号`#`为单个命令（或者更确切地说，表达式）切换到代码模式。这就是您调用函数和使用标记内导入等功能的方式。在这些命令和函数调用中，代码模式适用。要将内容作为值嵌入，您可以使用方括号返回标记模式：

```typ
First, a rectangle:
#rect()

Let me show how to do
#underline([_underlined_ text])

We can also do some maths:
#calc.max(3, 2 * 4)

And finally a little loop:
#for x in range(3) [
  Hi #x.
]
```

#[
    #show:blockk
    First, a rectangle:
    #rect()

    Let me show how to do
    #underline([_underlined_ text])

    We can also do some maths:
    #calc.max(3, 2 * 4)

    And finally a little loop:
    #for x in range(3) [
        Hi #x.
    ]
]
函数调用总是涉及函数的名称（rect、underline、calc.max、range），然后是参数列表，即使它是空的。参数列表括在括号中。


一个函数可以有多个参数。一些参数是位置性的，即您只需提供值：函数 `#lower("SCREAM")` 以全小写形式返回其参数。许多函数使用命名参数而不是位置参数来提高易读性。例如，矩形的尺寸和笔划是使用命名参数定义的：

```typ
#rect(
  width: 2cm,
  height: 1cm,
  stroke: red,
)
```

#[
    #show:blockk
    #rect(
        width: 2cm,
        height: 1cm,
        stroke: red,
    )
]

您可以通过首先输入名称（如上所示，width, height, and stroke）、冒号和值`(2cm, 1cm, red)`来指定命名参数。您可以在每个函数的参考页或键入时的自动完成面板中找到可用的命名参数。命名参数类似于一些 LaTeX 环境的配置方式，例如，您将键入 `\begin{enumerate}[label={\alph*)}]` 以使用标签 `a)`、`b)` 等开始列表。
通常，您希望为函数提供一些内容。例如，LaTeX 命令 `\underline{Alternative A}` 在 Typst 中将转换为`#underline([Alternative A])`。方括号表示一个值是内容。在这些括号内，您可以使用普通标记。然而，对于一个非常简单的构造来说，这是很多括号。这就是为什么您还可以在括号之后移动尾随内容参数（如果括号最终为空，则省略括号）。

```typ
Typst is an #underline[alternative]
to LaTeX.

#rect(fill: aqua)[Get started here!]
```

#[
    #show:blockk
    Typst is an #underline[alternative] to LaTeX.

    #rect(fill: aqua)[Get started here!]
]

#h(2em)您可能已经注意到参数具有不同的数据类型。 Typst 支持多种数据类型。下面是一个表格，其中包含一些最重要的内容以及如何编写它们：

#align(
    center,
    table(
        columns:(auto,auto),
        inset:10pt,
        align:horizon,
        [*Data type*],[*Example*],
        [Content],[\*fast\* typesetting],
        [String],["Pietro S. Author"],
        [Integer],[23],
        [Floating point number],[1.459],
        [Absolute length],[12pt, 5in, 0.3cm, ...],
        [Relative length],[65%],
    )
)

#h(2em)内容和字符串之间的区别在于内容可以包含标记，包括函数调用，而字符串实际上只是一个字符序列。您可以像在传统编程语言中那样使用 `+` 运算符求和和 `==` 等运算符来计算这些类型的相等性，而不是使用 `\addtocounter` 或 `\ifnum`。您甚至可以定义变量并使用它们进行计算。

为了指定任何这些类型的值，您必须处于代码模式！


在 LaTeX 中，一些像 `\textbf{bold text}` 这样的命令在花括号中传递它们的参数并且只影响那个参数，而其他像 `\bfseries bold text` 这样的命令充当开关并改变文档或当前范围中所有后续内容的外观（由一组大括号表示）。
在 Typst 中，函数可以两种方式使用：效果应用到文档或块的末尾，或者只应用到它的参数。例如，`#text(weight: "bold")[bold text]` 只会加粗它的论点，而 `#set text(weight: "bold")` 会加粗任何文本，直到当前块结束。一个函数的效果是显而易见的，这取决于它是在调用中使用还是在设置规则中使用。

```typ
I am starting out with small text.

#set text(14pt)

This is a bit #text(18pt)[larger,]
don't you think?
```

#[
    #show:blockk
    I am starting out with small text.

    #set text(14pt)

    This is a bit #text(18pt)[larger,]
    don't you think?
]

#h(2em)set规则可能出现在文档中的任何地方，并且可以被认为是预先设置其函数的参数：

```typ
#set enum(numbering: "I.")

Good results can only be obtained by
+ following best practices
+ being aware of current results
  of other researchers
+ checking the data for biases
```

#[
    #show:blockk
    #set enum(numbering: "I.")

    Good results can only be obtained by
    + following best practices
    + being aware of current results
    of other researchers
    + checking the data for biases
]

#h(2em)`+` 是调用枚举函数的语法糖（将其视为缩写），我们在上面应用了一组规则。大多数语法都以这种方式链接到函数。如果你需要设置一个元素的样式超出其参数启用的范围，你可以使用显示规则（有点类似于 `\renewcommand`）完全重新定义它的外观。

= 模板

在 LaTeX 中，您可以使用 `\documentclass{article}` 命令启动您的主 `.tex` 文件，以定义您的文档的外观。在该命令中，您可能已将 article 替换为另一个值，例如 report 和 amsart 以选择不同的外观。
使用 Typst 时，您可以使用函数来设计文档的样式。通常，您使用的模板提供了一个功能，可以为整个文档设置样式。首先，您从模板文件导入函数。然后，将其应用于整个文档。这是通过将以下文档包装在给定函数中的显示规则来实现的。下面的例子说明了它是如何工作的：

```typ
#import "conf.typ": conf
#show: conf.with(
  title: [
    Towards Improved Modelling
  ],
  authors: (
    (
      name: "Theresa Tungsten",
      affiliation: "Artos Institute",
      email: "tung@artos.edu",
    ),
    (
      name: "Eugene Deklan",
      affiliation: "Honduras State",
      email: "e.deklan@hstate.hn",
    ),
  ),
  abstract: lorem(80),
)

Let's get started writing this
article by putting insightful
paragraphs right here!
```

`import` 语句使来自另一个文件的函数（和其他定义）可用。在此示例中，它从 `conf.typ` 文件导入 `conf` 函数。此功能将内容格式化为会议文章。我们使用 `show` 规则将其应用于文档，并配置一些关于文章的元数据。最后，我们可以开始写下面的文章了！

函数是 Typst 的“命令”，可以将它们的参数转换为输出值，包括文档内容。函数是“纯”的，这意味着它们除了创建输出值/输出内容之外不能有任何效果。这与可以对您的文档产生任意影响的 LaTeX 宏形成鲜明对比。

为了让函数为整个文档设置样式，show 规则处理它之后的所有内容，并调用冒号后指定的函数，并将结果作为参数。 `.with` 部分是一种采用 conf 函数并在将其传递给 show 规则之前预先配置其参数的方法。

在 Web 应用程序中，您可以从预定义的模板中进行选择，甚至可以使用模板向导创建您自己的模板。您还可以查看 awesome-typst 存储库以查找社区制作的模板。我们计划构建一个包管理器，使模板在未来更容易共享！
您还可以创建自己的自定义模板。它们比相应的 `LaTeX .sty` 文件短几个数量级，可读性更强，所以试一试吧！

= 导入包

大多数你在 LaTeX 中加载包的东西都只包含在 Typst 中，不需要加载或安装任何东西。下面，我们整理了一张表格，列出了经常加载的包及其对应的 Typst 函数。

如果您需要从另一个文件加载函数和变量，例如使用模板，您可以使用 `import` 语句。如果你想包含另一个文件的文本内容，你可以使用 `include` 语句。它将产生包含文件的内容并将其放入您的文档中。
目前，Typst 没有包管理器，但我们计划构建一个，以便您可以轻松地使用来自社区的工具和模板的包，并发布您自己的包。

#align(
    center,
    table(
        columns:(auto,auto),
        inset:10pt,
        align:horizon,
        [graphicx, svg],[image function],
        [tabularx],[table, grid functions],
        [fontenc, inputenc, unicode-math],[Just start writing!],
        [babel, polyglossia],[text function: #set text(lang: "zh")],
        [amsmath],[Math mode],
        [amsfonts, amssymb],[sym module and syntax],
        [geometry, fancyhdr],[page function],
        [xcolor],[text function: #set text(fill: rgb("#0178A4"))],
        [hyperref],[link function],
        [bibtex, biblatex, natbib],[cite, bibliography functions],
        [lstlisting, minted],[raw function and syntax],
        [parskip],[block and par functions],
        [csquotes],[Type " or ' and set the text language],
        [caption],[figure function],
        [enumitem],[list, enum, terms functions],
    )
)


= 数学公式
要在 Typst 中使用数学模式，只需将您的方程用美元符号括起来。您可以通过在开始和结束美元符号和等式之间放置空格或换行符来进入显示模式。

```typ
The sum of the numbers from
$1$ to $n$ is:

$ sum_(k=1)^n k = (n(n+1))/2 $
```

#[
    #show:blockk
    The sum of the numbers from
    $1$ to $n$ is:

    $ sum_(k=1)^n k = (n(n+1))/2 $
]

数学模式的工作方式与普通标记或代码模式不同。单个字符和任意数量的数字会被显示为数学变量和数值（取决于你的方程式），而多个连续的非数字字符将被解释为Typst变量。

正如你在上面的例子中看到的，Typst在数学模式下预先定义了很多有用的变量。所有的希腊字母和一些希伯来字母都由它们的名字来解决。请参考符号页或使用自动完成面板来检查哪些符号是可用的。符号的替代形式和相关形式通常可以通过在句点后附加一个修饰语来选择。例如，`arrow.l.squiggly`插入了一个左旋的箭头。如果你想在你的表达式中插入多字母文本，请用双引号将其括起来：

你可以用<=、>=和->等速记符号输入许多符号。同样，定界符也会为其表达式自动缩放，就像LaTeX中隐含插入的 \left 和 \right 命令一样。你可以使用lr函数自定义定界符的行为。

Typst会自动将斜线/周围的术语设置为分数，同时尊重运算符优先级。所有的圆括号都会出现在输出中，而不会因为分数而出现多余的括号。

下标和上标在 Typst 和 LaTeX 中的工作方式类似。输入 `$x^2$` 会产生一个上标，`$x_2$` 会产生一个下标。如果您想在下标或上标中包含多个值，请将它们的内容括在括号中：`$x_(a -> epsilon)$`。
就像您可以在不键入 `#` 或 `/` 的情况下插入变量一样，您也可以使用“裸”函数。

上面的例子使用 cases 函数来描述 f。在 cases 函数中，参数使用逗号分隔，并且参数也被解释为数学。如果您需要将参数解释为 Typst 值，请在它们前面加上`#`。

您可以在数学模式下使用所有 Typst 函数并插入任何内容。如果您希望它们正常工作，在参数列表中使用代码模式，您可以在它们的调用前加上`#`。没有人能阻止您再使用矩形或表情符号作为变量。

如果您想直接输入您的数学符号作为 Unicode，那也是可能的！
数学调用可以使用二维参数列表；作为分隔符。最常见的用途是创建矩阵的 mat 函数。

```typ
$ delta "if" x <= 5 $

$ f(x) = (x + 1) / x $

$ f(x, y) := cases(
  1 "if" (x dot y)/2 <= 0,
  2 "if" x "is even",
  3 "if" x in NN,
  4 "else",
) $

$ (a + b)^2
  = a^2
  + text(fill: #maroon, 2 a b)
  + b^2 $

$ sum^10_(🥸=1)
  #rect(width: 4mm, height: 2mm)/🥸
  = 🧠 maltese $

$ mat(
  1, 2, ..., 10;
  2, 2, ..., 10;
  dots.v, dots.v, dots.down, dots.v;
  10, 10, ..., 10;
) $
```
#[
    #show:blockk
    $ delta "if" x <= 5 $

    $ f(x) = (x + 1) / x $

    $ f(x, y) := cases(
        1 "if" (x dot y)/2 <= 0,
        2 "if" x "is even",
        3 "if" x in NN,
        4 "else",
    ) $

    $ (a + b)^2
    = a^2
    + text(fill: #maroon, 2 a b)
    + b^2 $

    $ sum^10_(🥸=1)
    #rect(width: 4mm, height: 2mm)/🥸
    = 🧠 maltese $
    
    $ mat(
    1, 2, ..., 10;
    2, 2, ..., 10;
    dots.v, dots.v, dots.down, dots.v;
    10, 10, ..., 10;
    ) $
]

= “盗版”LaTeX

在 LaTeX 中设置的论文具有明确无误的外观。这主要是由于它们的字体、Computer Modern、对齐、窄行距和宽边距。
这应该是一个很好的起点！如果您想更进一步，为什么不创建一个可重复使用的模板呢？

- sets wide margins
- enables justification, tighter lines and first-line-indent
- sets the font to "New Computer Modern", an OpenType - derivate of Computer Modern for both text and code blocks
- disables paragraph spacing
- increases spacing around headings

```typ
#set page(margin: 1.75in)
#set par(leading: 0.55em, first-line-indent: 1.8em, justify: true)
#set text(font: "New Computer Modern")
#show raw: set text(font: "New Computer Modern Mono")
#show par: set block(spacing: 0.55em)
#show heading: set block(above: 1.4em, below: 1em)
```

= 局限性

尽管 Typst 可以成为当今许多人的 LaTeX 替代品，但 Typst 仍然（尚）不支持某些功能。以下是它们的列表，其中在适用的情况下包含可能的解决方法。

- 图表绘制Native charts and plots. LaTeX users often create charts along with their documents in PGF/TikZ. Typst does not yet include tools to draw diagrams, but the community is stepping up with solutions such as typst-canvas, typst-plot, and circuitypst. You can add those to your document to get started with drawing diagrams.

- 页边距Change page margins without a pagebreak. In LaTeX, margins can always be adjusted, even without a pagebreak. To change margins in Typst, you use the page function which will force a page break. If you just want a few paragraphs to stretch into the margins, then reverting to the old margins, you can use the pad function with negative padding.

- 浮动图片Floating figures. The figure command of LaTeX will smartly choose where to place a figure, be it on the top or bottom of the page, or a dedicated figure page. Typst's figure will always appear at the spot where they have been inserted in the markup. While this behavior can save some headache, it is often cumbersome to manually place figures. We will be adding this feature soon!

- 包含PDF Include PDFs as images. In LaTeX, it has become customary to insert vector graphics as PDF or EPS files. Typst supports neither format as an image format, but you can easily convert both into SVG files with online tools or Inkscape. We plan to add automatic conversion for these file formats to the Typst web app, too!

- 分页优化Page break optimization. LaTeX runs some smart algorithms to not only optimize line but also page breaks. While Typst tries to avoid widows and orphans, it uses less sophisticated algorithms to determine page breaks. You can insert custom page breaks in Typst using` #pagebreak(weak: true)` before submitting your document. The argument weak ensures that no double page break will be created if this spot would be a natural page break anyways. You can also use `#v(1fr)` to distribute space on your page. It works quite similar to LaTeX's \vfill.

- 参考数目格式Bibliographies are not customizable. In LaTeX, the packages bibtex, biblatex, and natbib provide a wide range of reference and bibliography formats. You can also use custom .bbx files to define your own styles there. Typst only supports a small set of citation styles at the moment, but we want to build upon this by supporting Citation Style Language (CSL), an XML-based format backed by Zotero that allows you to describe your own bibliography styles.

]
#pagebreak()