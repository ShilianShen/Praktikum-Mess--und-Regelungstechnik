# Institut für Elektrische Informationstechnik

> 电气信息技术研究所

Prof. Dr.-Ing. C. Bohn, Prof. Dr.-Ing. C. Rembe

> C. Bohn 教授（工学博士）、C. Rembe 教授（工学博士）

# MRT Praktikum SoSe 2026

> MRT 2026 年夏季学期实验课

# Versuch 1: Analyse elementarer Übertragungsglieder

> 实验 1：基本传递环节分析

In der Regelungstechnik werden Systeme nach ihrem Übertragungsverhalten, d.h. nach dem Verhalten des Ausgangssignals bezogen auf das Eingangssignal eingeteilt. Dabei ist es unabhängig um welches physikalische System es sich handelt, dementsprechend werden elektrische Systeme, thermodynamische Systeme oder mechanische Systeme usw. alle gleichbehandelt. Im Folgenden sind einige Begriffe zur Charakterisierung regelungstechnischer Systeme aufgeführt.

> 在控制工程中，系统按照其传递特性进行分类，也就是说，按照输出信号相对于输入信号的表现进行分类。这里与所涉及的具体物理系统无关，因此电气系统、热力学系统或机械系统等都以相同方式处理。下面列出了一些用于描述控制工程系统特性的术语。

Zum weiteren Verständnis der linearen Übertragungsglieder und zur Erarbeitung der Hausaufgaben kann das Skript zur Vorlesung Regelungstechnik I verwendet werden.

> 为了进一步理解线性传递环节并完成家庭作业，可以使用《控制工程 I》课程讲义。

## Regelungstechnische Grundbegriffe

> 控制工程基本概念

- **Einheitssprung**

  > **单位阶跃**

  Ein Sprung ist im Allgemeinen ein Signal $u(t)$, bei dem exakt zu einem Zeitpunkt $t_s$ von einem konstanten Wert auf einen anderen konstanten Wert gesprungen wird. Beim Einheitssprung im speziellen wird beim Zeitpunkt $t_s = 0$ von dem Wert $u(t) = 0$ mit $t < t_s$ auf den Wert $u(t) = 1$ mit $t \geq t_s$ gesprungen. Das Ausgangsignal eines Systems bei dem das Eingangssignal ein Sprung ist, ist die so genannte Sprungantwort

  > 一般而言，阶跃是一个信号 $u(t)$，它在某一确切时刻 $t_s$ 从一个恒定值跳变到另一个恒定值。对于单位阶跃，具体是在时刻 $t_s = 0$，从当 $t < t_s$ 时的数值 $u(t) = 0$ 跳变为当 $t \geq t_s$ 时的数值 $u(t) = 1$。当一个系统的输入信号为阶跃信号时，其输出信号称为阶跃响应。

- **Stationärer Wert**

  > **稳态值**

  Der Wert der sich (z.B. nach einer (sprungförmigen) Änderung der Eingangsgröße) kontinuierlich/dauerhaft einstellt. Das muss bei einem Einheitssprung nicht der Wert 1 sein, das hängt von der (stationären) Verstärkung des Systems ab

  > 经过一段过程后持续、永久稳定下来的数值（例如在输入量发生阶跃变化之后）。对于单位阶跃，该值不一定是 1，它取决于系统的（稳态）增益。

- **Stationäre Genauigkeit (beim geregelten System relevant)**

  > **稳态精度（与闭环控制系统相关）**

  Stationäre Genauigkeit bedeutet, dass der Systemausgang, nach einer gewissen Anpassungszeit, gleich dem Eingangssignal ist. Im Bildbereich heißt das konkret, dass ein System stationär genau ist, wenn die Übertragungsfunktion $G(s)$ für $s = 0$ gleich eins ist. In einem stationär genauen Regelkreis stellt sich also bei einem konstanten Soll-Wert ein Ist-Wert der Ausgangsgröße ein, der dem Soll-Wert entspricht. Man spricht in diesem Fall davon, dass der Regelkreis keine bleibende Regelabweichung hat.

  > 稳态精度意味着，在经过一定的调节时间之后，系统输出等于输入信号。在变换域中，具体来说，如果传递函数 $G(s)$ 在 $s = 0$ 时等于 1，则系统具有稳态精度。因此，在具有稳态精度的控制回路中，当给定值恒定时，输出量的实际值会稳定到与给定值相同的数值。在这种情况下，称该控制回路不存在稳态误差。

- **Pol-Nullstellen-Plan**

  > **极点-零点图**

  Im Pol-Nullstellen-Plan werden die Pole und Nullstellen der Übertragungsfunktion in einem kartesischen Koordinatensystem aufgetragen. Auf der x-Achse wird dabei der Realteil aufgetragen auf der y-Achse der Imaginärteil des jeweiligen Pols bzw. der jeweiligen Nullstelle. Durch die Lage der Pole und Nullstellen im Pol-Nullstellen-Plan kann man die Stabilität des Systems überprüfen und zudem Aussagen treffen über die Dämpfung und Bandbreite eines Systems abschätzen.

  > 在极点-零点图中，传递函数的极点和零点绘制在笛卡尔坐标系内。横轴表示相应极点或零点的实部，纵轴表示其虚部。根据极点和零点在极点-零点图中的位置，可以检查系统的稳定性，并估计系统的阻尼和带宽。

- **Bode-Diagramm**

  > **波德图**

  Amplitude und Phasenverschiebung werden getrennt logarithmisch über der Frequenz aufgetragen, es wird anhand der Amplitudenverstärkung und der Phasenverschiebung des Ausgangssignals gegenüber dem Eingangssignal für verschiedene Frequenzen ermittelt

  > 幅值和相位偏移分别相对于频率以对数形式绘制；通过不同频率下输出信号相对于输入信号的幅值增益和相位偏移来确定系统特性。

- **Nyquist-Diagramm**

  > **奈奎斯特图**

  Beim Nyquist-Diagramm werden Betrag und Phase in einem einzigen Diagramm dargestellt, indem man den Real- und Imaginärteil des Ausgabewertes direkt in die komplexe Zahlenebene zeichnet.

  > 在奈奎斯特图中，幅值和相位显示在同一张图中，方法是将输出值的实部和虚部直接绘制在复平面上。

## Bode-Diagramm

> 波德图

Das Bode-Diagramm ist ein hilfreiches Werkzeug zur Analyse elementarer Übertragungsglieder. Das Bode-Diagramm besteht eigentlich aus zwei Diagrammen, dem Amplitudengang und den Phasengang. Die Amplitude wird üblicherweise in dB angegeben.

> 波德图是分析基本传递环节的有用工具。波德图实际上由两张图组成，即幅频特性图和相频特性图。幅值通常以 dB 表示。

Für die Umrechnung einer Amplitude in dB gilt:

> 将幅值换算为 dB 时，适用下式：

$\hat{K}_{dB} = 20 \cdot \log_{10}(\hat{K})$

Beim Bode-Diagramm wird auf der y-Achse die Amplitude (in dB umgerechnet) bzw. die Phasenverschiebung linear und auf der x-Achse die Kreisfrequenz logarithmisch aufgetragen. Der Vorteil an dieser Darstellung ist, dass bei LTI-Systemen einzelne Abschnitte asymptotisch gegen Geraden verlaufen.

> 在波德图中，纵轴以线性方式表示幅值（换算为 dB）或相位偏移，横轴以对数方式表示角频率。这种表示方式的优点是，对于 LTI 系统，各个区段会渐近趋近于直线。

Für das Bode-Diagramm wird angenommen, dass das Eingangssignal des dargestellten Systems ein Sinus mit der Frequenz $\omega$ und der Amplitude $\hat{x}_{in}$ ist. Unter dieser Annahme ergibt sich für linear zeitinvariante (LZI) Systeme nach einem Einschwingvorgang ebenfalls ein Sinus mit derselben Kreisfrequenz, ggf. einer anderen Amplitude $\hat{x}_{out}$ und um eine Phase $\varphi$ verschoben.

> 对于波德图，假定所示系统的输入信号是频率为 $\omega$、幅值为 $\hat{x}_{in}$ 的正弦信号。在这一假设下，线性时不变（LZI）系统经过暂态过程之后，其输出同样是具有相同角频率的正弦信号，但幅值可能变为 $\hat{x}_{out}$，并产生相位偏移 $\varphi$。

Im Bode-Diagramm wird die Verstärkung zwischen Ein- und Ausgangsamplitude $\hat{K}(\omega)$, sowie die Phasenverschiebung $\varphi(\omega)$ aufgetragen. Dieser Zusammenhang kann aus der Übertragungsfunktion $G(s)$ eines Systems berechnet werden.

> 波德图绘制输入幅值与输出幅值之间的增益 $\hat{K}(\omega)$，以及相位偏移 $\varphi(\omega)$。这种关系可以由系统的传递函数 $G(s)$ 计算得到。

**Beispiel:**

> **示例：**

$G(s) = \frac{1}{s+1}$

Die Frequenzantwort dieses Systems ergibt sich zu (siehe Skript Regelungstechnik I Stand 2019 S. 137, bzw. S. 102 bei älteren Versionen):

> 该系统的频率响应为（参见 2019 年版《控制工程 I》讲义第 137 页，较旧版本见第 102 页）：

$G(\omega) = \frac{1}{j\omega+1} = \frac{1}{j\omega+1}\frac{-j\omega+1}{-j\omega+1} = \frac{1}{1+\omega^2} - j\frac{\omega}{1+\omega^2} = \frac{\sqrt{1+\omega^2}}{1+\omega^2}e^{-j\arctan(\omega)}$

Es ergibt sich somit eine komplexe Zahl mit einem Betrag

> 因此得到一个复数，其幅值为

$\hat{K} = \frac{\sqrt{1+\omega^2}}{1+\omega^2}$

und einer Phasenverschiebung

> 其相位偏移为

$\varphi = \arctan(\omega)$

Diesen Zusammenhang kann man grafisch mit Hilfe der Zeigerdarstellung komplexer Zahlen interpretieren. Hat man das vollständige Bode-Diagramm, kann man aus den asymptotischen Verläufen das vorliegende LTI-System herleiten. Außerdem lassen sich aus dem Bode-Diagramm die Eigenfrequenz, Resonanzfrequenz, Dämpfung und eine stationäre Verstärkung ablesen.

> 这种关系可以借助复数的相量表示进行图形化解释。获得完整的波德图后，可以根据渐近曲线推导出相应的 LTI 系统。此外，还可以从波德图中读出固有频率、共振频率、阻尼和稳态增益。

## Hausaufgabe:

> 家庭作业：

### a)

Wie lauten die Übertragungsfunktionen der elementaren Übertragungsglieder P, I, PT1 und PT2

> 基本传递环节 P、I、PT1 和 PT2 的传递函数分别是什么？

### b)

Wie sehen die Sprungantworten für die elementaren Übertragungsglieder P, I, PT1 und PT2 aus?

> 基本传递环节 P、I、PT1 和 PT2 的阶跃响应分别是什么样的？

### c)

Wie sieht prinzipiell jeweils das Ausgangssignal für die unter Punkt a) genannten Übertragungsglieder im eingeschwungenen Zustand aus, wenn ein Sinussignal mit konstanter Amplitude und konstanter Frequenz als Eingangssignal verwendet wird?

> 当使用幅值和频率恒定的正弦信号作为输入信号时，a) 中所列各传递环节在进入稳态后，其输出信号原则上分别是什么样的？

### d)

Wie verändert sich die Sprungantwort für eine Parallelschaltung von P- und I-Glied, und wie sieht die Sprungantwort für eine Reihenschaltung von P- und I-Glied aus? Überlegen Sie wie die Sprungantworten für eine Parallel- und eine Reihenschaltung von PT1 und I-Glied aussehen.

> P 环节与 I 环节并联时，阶跃响应如何变化？P 环节与 I 环节串联时，阶跃响应是什么样的？请思考 PT1 环节与 I 环节并联和串联时的阶跃响应分别是什么样的。

### e)

Wie viele Pole haben Systeme, die P-Verhalten, I-Verhalten, doppel I-Verhalten, PT1-Verhalten oder PT2-Verhalten aufweisen. Wo liegen die Pole im Pol-Nullstellen-Plan prinzipiell?

> 具有 P 特性、I 特性、双重 I 特性、PT1 特性或 PT2 特性的系统分别有多少个极点？这些极点原则上位于极点-零点图中的什么位置？

### f)

Bei einem PT2-Glied können verschiedene Verhaltensweisen unterschieden werden, zeigen Sie die verschiedenen Möglichkeiten anhand der Sprungantworten und der Pollagen der unterschiedlichen PT2 Glieder.

> PT2 环节可以表现出不同的特性。请通过不同 PT2 环节的阶跃响应和极点位置展示这些不同情况。

### g)

Wie unterscheiden sich die Bode-Diagramme der verschiedenen PT2 Glieder?

> 不同 PT2 环节的波德图有何区别？

### h)

Erklären Sie warum die Darstellung im Bode-Diagramm auch als Frequenzgang bezeichnet wird.

> 请解释为什么波德图中的这种表示也被称为频率响应。

### i)

Machen Sie sich mit den Aufgaben des Praktikumsversuchs vertraut und notieren Sie die für die einzelnen Aufgabenteile notwendigen Matlab-Befehle.

> 熟悉本实验的各项任务，并记录完成各个任务部分所需的 Matlab 命令。

## Praktikumsversuch:

> 实验任务：

Speichern Sie die für Ihre spätere Ausarbeitung benötigten Abbildungen in einem für Sie lesbaren Format, z.B. png, emf.

> 请将后续实验报告所需的图像保存为您可以读取的格式，例如 png、emf。

### 1.

Erstellen Sie mit Hilfe von Matlab-Simulink die Sprungantworten der folgenden elementaren Übertragungsglieder: P, I, PT1 und PT2 . Dabei kann $K_p = 2$, $T_1 = 0{,}5\,\mathrm{s}$ und $T_2 = 1\,\mathrm{s}$ angenommen werden.

> 使用 Matlab-Simulink 创建以下基本传递环节的阶跃响应：P、I、PT1 和 PT2。可假定 $K_p = 2$、$T_1 = 0{,}5\,\mathrm{s}$、$T_2 = 1\,\mathrm{s}$。

Tauschen Sie das sprungförmige Eingangssignal gegen ein sinusförmiges Eingangssignal mit konstanter Amplitude und Frequenz und vergleichen Sie die Systemausgänge mit dem Eingangssignal und Ihren Überlegungen. Wie wird diese festgestellte Eigenschaft von LZI Gliedern zur Systemanalyse genutzt?

> 将阶跃输入信号替换为幅值和频率恒定的正弦输入信号，并将系统输出与输入信号以及您的推断进行比较。所观察到的 LZI 环节特性如何用于系统分析？

### 2.

Zeichnen sie die Sprungantworten für die im Folgenden angegebenen PT2-Übertragungsfunktionen. Schreiben Sie dazu ein Matlab-Skript, in dem die Übertragungsfunktionen angegeben werden und mit dem die Sprungantworten erzeugt werden können. Berechnen Sie die Eigenfrequenzen und die Dämpfungen der Systeme. Welcher Zusammenhang besteht zwischen diesen Größen und dem Verlauf der Sprungantwort?

> 绘制下面给出的 PT2 传递函数的阶跃响应。为此编写一个 Matlab 脚本，在其中定义传递函数，并用该脚本生成阶跃响应。计算系统的固有频率和阻尼。这些量与阶跃响应曲线之间存在什么关系？

- **Diagramm 1:**

  > **图 1：**

  $G_{1a}(s) = \frac{1}{\frac{1}{3}s^2 + \frac{2}{3\cdot\sqrt{3}}s + 1}$

  $G_{2a}(s) = \frac{1}{\frac{1}{3}s^2 + \frac{4}{3\cdot\sqrt{3}}s + 1}$

  $G_{3a}(s) = \frac{1}{\frac{1}{3}s^2 + \frac{2}{\sqrt{3}}s + 1}$

  $G_{4a}(s) = \frac{1}{\frac{1}{3}s^2 + \frac{18}{6\cdot\sqrt{3}}s + 1}$

- **Diagramm 2**

  > **图 2**

  $G_{1b}(s) = \frac{1}{\frac{1}{3}s^2 + \frac{2}{3\cdot\sqrt{3}}s + 1}$

  $G_{2b}(s) = \frac{1}{\frac{1}{4}s^2 + \frac{2}{3\cdot\sqrt{4}}s + 1}$

  $G_{3b}(s) = \frac{1}{\frac{1}{6}s^2 + \frac{2}{3\cdot\sqrt{6}}s + 1}$

### 3.

Schätzen Sie den Verlauf des Bode-Diagramms für eine der unter Punkt 2 angegeben Übertragungsfunktionen ab.

> 估计第 2 项所给传递函数中任意一个的波德图走势。

### 4.

Zeichnen Sie für die oben angegebenen Übertragungsfunktionen die Bode-Diagramme und erklären Sie die verschiedenen Verläufe. Erläutern Sie in diesem Zusammenhang auch ihre Überlegungen aus Punkt 3.

> 绘制上述传递函数的波德图，并解释不同的曲线走势。在此背景下，也请说明您在第 3 项中的思考。

### 5.

Zeichen Sie die Pol–Nullstellenpläne für die angegebenen Übertragungsfunktionen und erläutern Sie diese im Bezug auf die berechneten Eigenfrequenzen, Dämpfungen und die dargestellten Sprungantworten.

> 为所给传递函数绘制极点-零点图，并结合计算得到的固有频率、阻尼和所示阶跃响应对其进行说明。
