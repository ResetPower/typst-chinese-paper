# typst-chinese-paper
Typst code of Chinese test papers

## 结构说明

- `retypeset` 文件夹存储各种试卷的 Typst 源文件，其中的所有试卷均为网络或其他手段收集，属于对已有试卷的重排版。

- `resources` 文件夹存储各 Typst 文件可能会依赖的资源文件，包括但不限于字体和 Typst 库等。

> 由于许多 Typst 源文件会依赖一些相同的资源文件，因此将资源文件单独存放出来是一种更经济的存储空间利用手段。

## 使用方法

`retypeset` 文件夹下的 `README.md` 会列出各个 Typst 文件所依赖的资源文件。你需要先在 `resources` 文件夹中找到所需要的文件并将它们导入你的 Typst 项目。
