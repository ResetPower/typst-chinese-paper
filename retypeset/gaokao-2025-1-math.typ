#import "@preview/cetz:0.4.0"
#import "diagbox.typ": *

#let sans = "Noto Sans CJK SC"
#let serif = ("Times New Roman", "Noto Serif CJK SC")

#show math.equation.where(block: false): math.display
#show math.equation: set text(font: "XITS Math")

#set text(lang: "zh", font: serif, size: 11pt)

#set par(leading: 1.5em, spacing: 1.5em)

#set page(
  paper: "a4",
  footer: context [
    #set align(center)
    数学试题 A
    #h(1em)
    #counter(page).display("第 1 页（共 1 页）", both: true)
  ],
)

#text(font: sans)[
  绝密★启用前
  #h(1fr)
  #text(13pt)[
    试卷类型：
    #text(font: serif, weight: "bold")[A]
  ]
]

#align(center)[
  #text(17pt)[
    2025 年普通高等学校招生全国统一考试
  ]
  
  #text(22pt, font: sans)[
    数 #h(1em) 学
  ]
]

本试卷共4页，19题，满分150分。考试用时120分钟。

#grid(
  columns: 2,
  column-gutter: 1em,
  text(font: sans)[注意事项：],
  [
    + 答卷前，考生务必用黑色字迹钢笔或签字笔将自己的姓名、考生号、考场号和座位号填写在答题卡上。用 2B 铅笔将试卷类型（ A ）填涂在答题卡相应位置上。将条形码横贴在答题卡右上角 "条形码粘贴处"。

    + 作答选择题时，选出每小题答案后，用 2B 铅笔把答题卡上对应题目选项的答案信息点涂黑；如需改动，用橡皮擦干净后，再选涂其他答案，答案不能答在试卷上。
    
    + 非选择题必须用黑色字迹钢笔或签字笔作答，答案必须写在答题卡各题目指定区域内相应位置上；如需改动，先划掉原来的答案，然后再写上新的答案；不准使用铅笔和涂改液。不按以上要求作的答案无效。
    
    + 考生必须保持答题卡的整洁。考试结束后，将本试卷和答题卡一并交回。
  ]
)

#let part(content) = text(font: sans, par(hanging-indent: 2em, content))

#part[一、选择题：本题共8小题，每小题5分，共40分．在每小题给出的四个选项中，只有一项是符合题目要求的．]

#let choice(question, rows: 1, ..options) = grid(
  rows: 2,
  row-gutter: 1.5em,
  question,
  grid(
    columns: if (rows == 1) {
      (1fr, 1fr, 1fr, 1fr)
    } else if (rows == 2) {
      (1fr, 1fr)
    },
    row-gutter: 1.5em,
    ..options
  )
)

#let mathbf(x) = math.upright(math.bold(x))

+ #choice[$(1+5"i")"i"$ 的虚部为][A. $-1$][B. $0$][C. $1$][D. $6$]

+ #choice[设全集 $U={x|x "是小于 9 的正整数"}$，集合 $A={1,3,5}$，则 $complement_U A$ 中元素个数][A. $0$][B. $3$][C. $5$][D. $8$]

+ #choice[若双曲线 $C$ 的虚轴长为实轴长的 $sqrt(7)$ 倍，则 $C$ 的离心率为][A. $sqrt(2)$][B. $2$][C. $sqrt(7)$][D. $2sqrt(2)$]

+ #choice[若点 $(a, 0)(a>0)$ 是函数 $y=2tan(x-pi/3)$ 的图像的一个对称中心，则 $a$ 的最小值为][A. $pi/6$][B. $pi/3$][C. $pi/2$][D. $(4pi)/3$]

+ #choice[设 $f(x)$ 是定义在 $mathbf(R)$ 上且周期为 $2$ 的偶函数，当 $2<=x<=3$ 时，$f(x)=5-2x$，则 $f(-3/4)=$][A. $-1/2$][B. $-1/4$][C. $1/4$][D. $1/2$]

#pagebreak()

6. #choice[
  
  帆船比赛中，运动员可借助风力计测定风速的大小和方向，测出的结果在航海学中称为视风风速，视风风速对应的向量，是真风风速对应的向量与船行风速对应的向量之和，其中船行风速对应的向量与船速对应的向量大小相等，方向相反．图 1 给出了部分风力等级、名称与风速大小的对应关系．已知某帆船运动员在某时刻测得的视风风速对应的向量与船速对应的向量如图 2（风速的大小和向量的大小相同，单位 m/s），则真风为

  #align(center)[
    #grid(
      columns: (1fr, 1fr),
      align: horizon,
      inset: 1.5em,
      grid(
        rows: 2,
        row-gutter: 1.5em,
        table(
          columns: 3,
          stroke: 0.5pt,
          inset: 1em,
          table.header([等级], [风速大小(m/s)], [名称]),
          [$2$], [$1.1~3.3$], [轻风],
          [$3$], [$3.4~5.4$], [微风],
          [$4$], [$5.5~7.9$], [和风],
          [$5$], [$8.0~10.1$], [劲风]
        ),
        [图 1]
      ),
      grid(
        rows: 2,
        row-gutter: 1.5em,
        cetz.canvas({
          import cetz.draw: *
          grid((0, 0), (3, 3), stroke: (dash: "dashed", thickness: 0.5pt))
          line((0, 0), (0, 3.5))
          line((0, 0), (3.5, 0))
          mark((0, 3.5), (0, 4), symbol: "barbed")
          mark((3.5, 0), (4, 0), symbol: "barbed")
          content((-0.25, -0.25), $O$)
          content((-0.25, 1), $1$)
          content((-0.25, 2), $2$)
          content((-0.25, 3), $3$)
          content((-0.25, 3.5), $y$)
          content((1, -0.25), $1$)
          content((2, -0.25), $2$)
          content((3, -0.25), $3$)
          content((3.5, -0.25), $x$)
          line((2, 0), (3, 3))
          line((3, 3), (0, 2))
          mark((3, 3), (4, 6), symbol: "straight")
          mark((0, 2), (-3, 1), symbol: "straight")
          content((2, 1.5), [船速])
          content((0.875, 2.75), [视风风速])
        }),
        [图 2]
      )
    )
  ]

][A. 轻风][B. 微风][C. 和风][D. 劲风]

+ #choice[若圆 $x^2+(y+2)^2=r^2(r>0)$ 上到直线 $y=sqrt(3)x+2$ 的距离为 $1$ 的点有且仅有 $2$ 个，则 $r$ 的取值范围是][A. $(0,1)$][B. $(1, 3)$][C. $(3, +infinity)$][D. $(0, +infinity)$]

+ #choice[若实数 $x,y,z$ 满足 $2+log_2x=3+log_3y=5+log_5z$，则 $x,y,z$ 的大小关系不可能是][A. $x>y>z$][B. $x>z>y$][C. $y>x>z$][D. $y>z>x$]

#part[二、选择题：本题共3小题，每小题6分，共18分．在每小题给出的选项中，有多项符合题目要求．全部选对的得6分，部分选对的得部分分，有选错的得0分．]

9. #choice(rows: 2)[在正三棱柱 $A B C-A_1 B_1 C_1$ 中，$D$ 为 $B C$ 中点，则][A. $A D perp A_1 C$][B. $B C perp "平面" A A_1 D$][C. $A D slash.double A_1 B_1$][D. $C C_1 slash.double "平面" A A_1 D$]

+ #choice[设抛物线 $C: y^2=6x$ 的焦点为 $F$，过 $F$ 的直线交 $C$ 于 $A, B$，过 $F$ 且垂直于 $A B$ 的直线交 $l: x=-3/2$ 于 $E$，过点 $A$ 作准线 $l$ 的垂线，垂足为 $D$，则][A. $|A D|=|A F|$][B. $|A E|=|A B|$][C. $|A B|>=6$][D. $|A E||B E|>=18$]

#pagebreak()

11. #choice(rows: 2)[已知 $triangle.small A B C$ 的面积为 $1/4$，若 $cos 2A+cos 2B+2sin C=2, cos A cos B sin C=1/4$，则][A. $sin C = sin^2A+sin^2B$][B. $A B=sqrt(2)$][C. $sin A+sin B=sqrt(6)/2$][D. $A C^2+B C^2=3$]

#part[三、填空题：本题共3小题，每小题5分，共15分．]

#let blank = box(width: 3em, stroke: (bottom: 0.5pt))

12. 若直线 $y=2x+5$ 是曲线 $y="e"^x+x+a$ 的切线，则 $a=$ #blank．

+ 若一个等比数列的各项均为正数，且前 $4$ 项和为 $4$，前 $8$ 项和为 $68$，则该等比数列的公比为 #blank．

+ 一个箱子里有 $5$ 个相同的球，分别以 $1~5$ 标号，若每次取一颗，有放回地取三次，记至少取出一次的球的个数为 $X$，则数学期望 $E(X)=$ #blank．

#part[四、解答题：本题共5小题，共77分．解答应写出文字说明、证明过程或演算步骤]

#let idt = h(2em)

15.（13 分）

#idt 为研究某疾病与超声波检查结果的关系，从做过超声波检查的人群中随机调查了 $1000$ 人，得到如下的列联表：

#align(center)[
  #table(
    columns: 4,
    stroke: 0.5pt,
    table.header(bdiagbox(line_stroke: 0.5pt)[组别][超声波检查结果], [正常], [不正常], [合计]),
    "患该疾病", $20$, $180$, $200$,
    "未患该疾病", $780$, $20$, $800$,
    "合计", $800$, $200$, $1000$
  )
]
  
#idt（1）记超声波检查不正常患者患有该疾病的概率为 $p$，求 $p$ 的估计值；
  
#idt（2）根据小概率值 $alpha = 0.01$ 的独立性检验，分析超声波检查结果是否与患该疾病有关．

#grid(
  columns: 6,
  align: horizon,
  column-gutter: 0.5em,
  h(2em),
  [附：],
  $chi^2=(n(a d-b c)^2)/((a+b)(c+d)(a+c)(b+d))$,
  [，],
  table(
    columns: 4,
    stroke: none,
    align: center,
    table.hline(position: bottom, stroke: 0.5pt),
    table.vline(position: end, stroke: 0.5pt),
    table.header($P(chi^2>=k)$, $0.050$, $0.010$, $0.001$),
    $k$, $3.841$, $6.635$, $10.828$
  ),
  [．]
)

#v(3em)
  
16.（15 分）
  
#idt 设数列 ${a_n}$ 满足 $a_1=3$，$a(n+1)/n=(a_n)/(n+1)+1/(n(n+1))$．

#idt（1） 证明：${n a_n}$ 为等差数列；
  
#idt（2） 设 $f(x)=a_1x+a_2x^2+...+a_m x^m$，求 $f'(-2)$．

#pagebreak()

17.（15 分）

#idt 如图所示的四棱锥 $P-A B C D$ 中，$P A perp "平面" A B C D, B C slash.double A D, A B perp A D$

#grid(
  columns: 2,
  [
    #idt（1）证明：$"平面" P A B perp "平面" P A D$；
      
    #idt（2）$P A=A B=sqrt(2),A D=1+sqrt(3),B C=2$，$P,B,C,D$ 在同一个球面上，设该球面的球心为 $O$．
      
    #idt #idt（i）证明：$O$ 在平面 $A B C D$ 上；
      
    #idt #idt（ii）求直线 $A C$ 与直线 $P O$ 所成角的余弦值．
  ],
  cetz.canvas({
    import cetz.draw: *
    line((0, 0, 0), (x: 3), stroke: (dash: "dashed"))
    line((0, 0, 0), (y: 3), stroke: (dash: "dashed"))
    line((0, 0, 0), (z: 2), stroke: (dash: "dashed"))
    line((x: 3), (2, 0, 2))
    line((z: 2), (2, 0, 2))
    line((y: 3), (2, 0, 2))
    line((y: 3), (x: 3))
    line((y: 3), (z: 2))
    content((x: -0.25), $A$)
    content((y: 3.25), $P$)
    content((z: 2.25), $B$)
    content((2.25, 0, 2.25), $C$)
    content((x: 3.25), $D$)
  })
)

#v(3em)

18.（17 分）
  
#idt 设椭圆 $C: (x^2)/(a^2)+(y^2)/(b^2)=1(a>b>0)$ 的离心率为 $(2sqrt(2))/3$，下顶点为 $A$，右顶点为 $B$，\ $|A B|=sqrt(10)$．

#idt（1）求椭圆的标准方程；
  
#idt（2）已知动点 $P$ 不在 $y$ 轴上，点 $R$ 在射线 $A P$ 上，且满足 $|A R| dot |A P|=3$．

#idt #idt（i）设 $P(m,n)$，求点 $R$ 的坐标（用 $m,n$ 表示）；
  
#idt #idt（ii）设 $O$ 为坐标原点，$M$ 是椭圆上的动点，直线 $O R$ 的斜率为直线 $O P$ 的斜率\ 的 $3$ 倍，求 $|P M|$ 的最大值．

#v(3em)

19.（17 分）

#idt（1）求函数 $f(x)=5cos x-cos 5x$ 在区间 $[0, pi/4]$ 的最大值；

#idt（2）给定 $theta in (0, pi)$ 和 $a in mathbf(R)$，证明：存在 $y in [a-theta, a+theta]$ 使得 $cos y<=cos theta$；

#idt（3）设 $b in mathbf(R)$，若存在 $phi in mathbf(R)$ 使得 $5cos x-cos(5x+phi)<=b$ 对 $x in mathbf(R)$ 恒成立，\ 求 $b$ 的最小值．
