#import "../lib.typ": homework-paper
#import "@preview/zh-kit:0.1.0": *

#let abstract = [
这里是你的论文摘要。它可以是较长的文本块。
摘要内容会自动处理缩进和排版。
#zhlorem(20)

#zhlorem(50)
]

#show: homework-paper.with(
  enable-outline: true,    // 是否生成目录 (默认 false)
  title: "你的论文标题",
  authors: (
    (
      name: "你的名字",
      number: "12345678",
      department: "计算机系"
    ),
  ),
  abstract: abstract,
  keywords: ("关键字1", "喵喵喵", "Typst模板") // 关键词元组
)

= 引言

#for len in (100, 300, 200, 400) {
  par(zhlorem(len))
}

= 一级标题

#zhlorem(100)

== 二级标题

#zhlorem(300)

=== 三级标题

#zhlorem(50)

=== 还是三级标题

#footnote("这是句脚注") <footnote:1>
#zhlorem(20) @footnote:1

=== 又是三级标题

#zhlorem(70)

== 再来一个二级标题

#for len in (200, 100, 80, 400) {
  par(zhlorem(len))
}

=== 三级标题

==== 可以有很多标题

===== 接下来就会用 1.1.1. 的格式

#zhlorem(20)


= 结论

// --- 参考文献 ---
#bibliography("references.bib", title: "参考文献", style: "gb-7714-2015-author-date")