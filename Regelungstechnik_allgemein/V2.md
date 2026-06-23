# Institut für Elektrische Informationstechnik

电气信息技术研究所

Prof. Dr.-Ing. C. Bohn, Prof. Dr.-Ing. C. Rembe

C. Bohn 工学博士教授，C. Rembe 工学博士教授

# MRT Praktikum

MRT 实验

# Versuch 2: Temperaturmessung mit Thermoelementen

实验 2：使用热电偶进行温度测量

## Teil 1: Aufbau einer Messkette zur Temperaturmessung

第 1 部分：搭建温度测量链

Die Temperatur stellt einen der wichtigsten Prozessparameter der Messtechnik dar. Es existieren zahlreiche Methoden diese thermodynamische Zustandsgröße zu erfassen. Im Bereich der elektronischen Messtechnik werden oft Widerstandsthermometer (basierend auf einer temperaturabhängigen Widerstandsänderung) und Thermopaare (basierend auf dem Seebeck-Effekt) eingesetzt. Letzteres soll in diesem Praktikumsversuch genauer betrachtet und als Sensorprinzip genutzt werden.

温度是测量技术中最重要的过程参数之一。测量这一热力学状态量的方法有很多。在电子测量技术领域，经常使用电阻温度计（基于随温度变化的电阻变化）和热电偶（基于塞贝克效应）。本实验将对后者进行更详细的研究，并将其用作传感器原理。

Abbildung 1: Schematischer Versuchsaufbau zur thermoelektrischen Temperaturmessung

图 1：热电温度测量实验装置示意图

Dafür soll ein signalaufbereitender Mikrochip AD595 (Vorverstärkung und Vergleichsstellentemperaturkompensation) und ein Verstärker verwendet werden, um die aus einem Thermoelement resultierende Thermospannung für einen Analog-Digital-Wandler anzupassen und an einen Rechner weiterzuleiten (siehe Abbildung 1). Mit Hilfe eines Temperaturreferenzmesssystems lassen sich anhand der beschriebenen Messstrecke die Kennlinienparameter eines solchen Thermoelementes erfassen.

为此，将使用信号调理微芯片 AD595（前置放大和冷端温度补偿）以及一个放大器，对热电偶产生的热电压进行调整，使其适合模数转换器，并将其传输到计算机（见图 1）。借助温度参考测量系统，可以通过上述测量链获得这种热电偶的特性曲线参数。

Im abschließenden Schritt können diese Parameter als Kalibrierdaten verwendet werden, um die vom Thermopaar ausgegebene Spannung einem Temperaturwert zuzuordnen und diesen in Echtzeit anzeigen zu lassen. Laut Datenblatt hat der Mikrochip AD595 einen Temperaturempfindlichkeit der Ausgangsspannung $U_{out}$ von $S_{\vartheta}=\frac{\partial U_{out}}{\partial \vartheta}=10\,\frac{\mathrm{mV}}{^\circ\mathrm{C}}$.

在最后一步中，可以将这些参数用作校准数据，把热电偶输出的电压映射为温度值，并实时显示。根据数据手册，微芯片 AD595 输出电压 $U_{out}$ 的温度灵敏度为 $S_{\vartheta}=\frac{\partial U_{out}}{\partial \vartheta}=10\,\frac{\mathrm{mV}}{^\circ\mathrm{C}}$。

## Prinzip eines Thermoelementes

热电偶的原理

Der durch eine Temperaturdifferenz verursachte elektrische Potentialunterschied aufgrund von Thermodiffusion bei der Kopplung zweier unterschiedlicher Metalle entsprechend Abbildung 2 wird als Seebeck-Effekt (oder auch thermoelektrischer Effekt) bezeichnet [1]. Im Elektronengas-Modell geht man davon aus, dass die Elektronen in Bereichen der größeren thermischen Energie auch eine größere Bewegungsenergie besitzen und somit in Richtung der kalten Seite diffundieren (ähnlich der kinetischen Gastheorie). Mit der Zeit stellt sich ein Gleichgewicht zwischen diesem Diffusionsprozess und der Coulomb-Kraft ein, was zu einer dauerhaften Ladungstrennung und einer messbaren Thermospannung führt.

如图 2 所示，当两种不同金属连接时，由于温差引起的热扩散会产生电势差，这种现象称为塞贝克效应（也称热电效应）[1]。在电子气模型中，假定处于较高热能区域的电子也具有较大的动能，因此会向冷端扩散（类似于气体动理论）。随着时间推移，这一扩散过程与库仑力之间会达到平衡，从而形成持久的电荷分离和可测量的热电压。

Abbildung 2: Ausführung eines einfachen Thermopaars

图 2：简单热电偶的结构

Erstmals im Jahre 1822 von Thomas Johann Seebeck nachgewiesen, wird die lineare Abhängigkeit zwischen der Temperaturdifferenz und der dadurch erzeugten elektrischen Spannung $U_0$ über die gleichnamigen Koeffizienten $k_{AB}$ charakterisiert gemäß [1]:

该现象于 1822 年由 Thomas Johann Seebeck 首次证实。温差与由此产生的电压 $U_0$ 之间的线性关系，可根据同名系数 $k_{AB}$ 按照文献 [1] 表示为：

$U_0=k_{AB}\cdot(T_2-T_1). \qquad (2.1)$

$U_0=k_{AB}\cdot(T_2-T_1)。\qquad (2.1)$

Die theoretische Ermittlung der Seebeck-Spannung (oder auch Thermospannung) für eine bestimmte Werkstoffpaarung A-B erfolgt mit Hilfe der thermoelektrischen Spannungsreihe. Für Temperaturmessungen eingesetzte Thermoelemente bestehen meist aus einer Kombination von Reinmetall und Legierung. Dafür werden vorzugsweise die Materialpaarungen NiCr-CuNi (57 µV/K), Fe-CuNi (53,8 µV/K) und NiCr-Ni (37,5 µV/K) verwendet.

对于特定材料组合 A-B，其塞贝克电压（也称热电压）的理论值可借助热电电压序列确定。用于温度测量的热电偶通常由纯金属与合金组合而成。常用的材料组合包括 NiCr-CuNi（57 µV/K）、Fe-CuNi（53.8 µV/K）和 NiCr-Ni（37.5 µV/K）。

Soll statt der Temperaturdifferenz eine absolute Temperatur $T_1$ angegeben werden, wird üblicherweise der zweite Materialübergang auf eine definierte Referenztemperatur $T_2$ (z.B. eingetaucht in Eiswasser) gelegt oder aber auch auf elektronische Art an der Vergleichsstelle kompensiert.

如果要给出绝对温度 $T_1$ 而不是温差，通常将第二个材料接点保持在一个规定的参考温度 $T_2$（例如浸入冰水中），或者在冷端采用电子方式进行补偿。

## Nicht-invertierende Messverstärkerschaltung

同相测量放大器电路

Ein Operationsverstärker ist ein mehrstufiger hochverstärkender galvanisch gekoppelter Differenzverstärker. Er kann sowohl Gleichspannungen als auch Wechselspannungen verstärken. Der innere Aufbau ist so beschaffen, dass seine Wirkungsweise durch die äußere Gegenkopplungsbeschaltung beeinflusst wird. Der OPV hat einen invertierenden (Minus-) Eingang und einen nichtinvertierenden (Plus-) Eingang. Das Plus-Symbol bedeutet, dass der Verstärkungsfaktor mit positivem Vorzeichen multipliziert werden muss. Das Minus-Symbol bedeutet, dass der Verstärkungsfaktor mit negativem Vorzeichen multipliziert werden muss. Die Differenz der beiden Spannungen wird verstärkt auf den Ausgang ausgegeben. Über eine entsprechende Beschaltung kann man mit OPVs neben den Grundschaltungen, wie Addierer, Subtrahierer, Verstärker oder aktive Abschwächer auch Filterschaltungen oder komplette Reglerschaltungen wie z. B. ein elektronisch geregeltes Netzteil realisieren.

运算放大器是一种多级、高增益、直接耦合的差分放大器。它既能放大直流电压，也能放大交流电压。其内部结构使得工作方式可由外部负反馈电路决定。运算放大器具有一个反相（负）输入端和一个同相（正）输入端。正号表示增益因子应以正号相乘，负号表示增益因子应以负号相乘。两个输入电压之差经放大后输出。通过相应的外部电路，运算放大器除可实现加法器、减法器、放大器或有源衰减器等基本电路外，还可实现滤波器电路或完整的控制电路，例如电子稳压电源。

Abbildung 3: nicht-invertierende Verstärkerschaltung

图 3：同相放大器电路

Für die im Praktikum benötigte Verstärkerstufe soll eine nicht-invertierende Beschaltung wie in Abbildung 3 eingesetzt werden, die sich dadurch auszeichnet, dass die Eingangsspannung $U_e$ das gleiche Vorzeichen wie die Ausgangsspannung $U_a$ besitzt. Der Verstärkungsfaktor $V$ wird über den Spannungsteiler im rückführenden Ast eingestellt und berechnet sich für einen idealen OPV mit Hilfe der Kirchhoffschen Gesetze [1] zu

本实验所需的放大级将采用图 3 所示的同相接法，其特点是输入电压 $U_e$ 与输出电压 $U_a$ 的符号相同。增益 $V$ 通过反馈支路中的分压器设定。对于理想运算放大器，根据基尔霍夫定律 [1] 可得：

$V=\frac{U_a}{U_e}=1+\frac{R_2}{R_1}. \qquad (2.2)$

$V=\frac{U_a}{U_e}=1+\frac{R_2}{R_1}。\qquad (2.2)$

Man erkennt, dass bei einer solchen Beschaltung nur Verstärkungsfaktoren oberhalb von Eins möglich sind. Im Extremfall ist die gesamte Ausgangsspannung auf den Eingang zurückgekoppelt ($R_2=0, R_1=\infty$). Dann arbeitet die Schaltung mit $V=1$ und wird als Spannungsfolger oder auch Impedanzwandler bezeichnet.

可以看出，这种接法只能实现大于或等于 1 的增益。在极限情况下，全部输出电压都反馈至输入端（$R_2=0, R_1=\infty$）。此时电路以 $V=1$ 工作，称为电压跟随器或阻抗变换器。

## Grundlagen eines AD-Wandlers

模数转换器基础

Da die Umwelt analoge Signale liefert, gibt es immer die Aufgabe, analoge Größen in digitale Größen umzuwandeln. Dabei werden im Allgemeinen die analogen Signale des Sensors über analoge Anpassschaltungen (z. B. Verstärker, Filter) zu einem Analog/Digitalwandler (AD-Wandler) geführt, der den Wert der analogen Messgröße in einen digitalen Zahlenwert umformt. Der AD-Wandler hat demnach drei Aufgaben:

由于现实环境提供的是模拟信号，因此总是需要将模拟量转换为数字量。一般来说，传感器的模拟信号会先经过模拟调理电路（例如放大器、滤波器），再送入模数转换器（AD 转换器），由其将模拟测量值转换为数字数值。因此，AD 转换器具有三项任务：

- Diskretisierung (Abtasten): Diskretisieren bedeutet Aufteilen eines kontinuierlichen Eingangsignals in äquidistante, zeitdiskrete Messwerte. Bei tiefpassbegrenzten Signalen muss dabei das Abtasttheorem erfüllt werden, damit kein Aliasing auftritt. Eine wichtige Komponente der analogen Anpassschaltungen vor der AD-Wandlung ist deshalb ein sog. Anti-Aliasing-Filter.

  离散化（采样）：离散化是指将连续输入信号划分为等时间间隔的离散测量值。对于带限低通信号，必须满足采样定理，以避免出现混叠。因此，AD 转换前的模拟调理电路中，一个重要组成部分是所谓的抗混叠滤波器。

- Quantisierung: Quantisieren bedeutet Aufteilen des Messwertes in eine Anzahl gleich großer Abschnitte (Messquanten), so dass einem Messwert immer eine ganz bestimmte Anzahl dieser Messquanten entspricht (wertediskret). Da einerseits der als analoge Größe vorliegende Messwert innerhalb seines Amplitudenbereichs unendlich viele Werte annehmen kann, andererseits aber beim Quantisieren nur eine endliche Zahl von Werten zu realisieren ist, muss bei allen digitalen Messgeräten immer mit einem Quantisierungsfehler gerechnet werden.

  量化：量化是指将测量值划分为若干个大小相等的区间（量化单位），使每个测量值对应于确定数量的量化单位，从而实现数值离散化。由于模拟测量值在其幅度范围内可以取无限多个值，而量化只能实现有限数量的数值，因此所有数字测量仪器都不可避免地存在量化误差。

- Codierung: Aufgabe des Codierens ist es, die dem Messwert entsprechende Zahl der Messquanten in ein bestimmtes Zahlensystem umzusetzen. Die Übersetzungsvorschrift ist der Code. Im Dezimalsystem ergeben sich die einzelnen Ziffern 0 bis 9 als Faktoren der Potenzen von 10 und die Dezimalzahl selbst als Summe der Potenzen zur Basis 10. In der digitalen Messtechnik wird das Dualsystem bevorzugt, das nur die Ziffern 0 und 1 enthält.

  编码：编码的任务是将与测量值对应的量化单位数量转换为某种数制。转换规则称为编码。在十进制中，各位数字 0 至 9 作为 10 的幂的系数，十进制数本身是以 10 为底的各次幂之和。在数字测量技术中，通常优先采用只含数字 0 和 1 的二进制。

Abbildung 4: Darstellung der Signalverarbeitungskette zur AD-Umwandlung [1]

图 4：AD 转换信号处理链示意图 [1]

Besitzt ein AD-Wandler eine Wortlänge von $m$ Bit, so ergibt sich eine Anzahl von $2^m$ Stufen. Mit dem Arbeitsbereich des AD-Wandlers lässt sich die kleinste Schrittweite $\Delta U_{min}$ (auch Auflösung oder „least significant Bit“ oder LSB genannt) berechnen

如果 AD 转换器的字长为 $m$ 位，则共有 $2^m$ 个级别。根据 AD 转换器的工作范围，可以计算最小步长 $\Delta U_{min}$（也称分辨率、最低有效位或 LSB）：

$\Delta U_{min}=\frac{U_{max}-U_{min}}{2^m-1}. \qquad (2.3)$

$\Delta U_{min}=\frac{U_{max}-U_{min}}{2^m-1}。\qquad (2.3)$

Innerhalb dieser Schrittweite kann das analoge ungewandelte Signal vom gewandelten Signal abweichen. Diese Abweichung wird als Quantisierungsfehler bezeichnet [1]. Neben dem Quantisierungsfehler treten mehr oder weniger große schaltungsbedingte Fehler auf, welche sich als Offset und Verstärkungsfehler bemerkbar machen.

在该步长范围内，未经转换的模拟信号可能与转换后的信号存在偏差。这种偏差称为量化误差 [1]。除量化误差外，还会出现不同程度的电路误差，表现为偏置误差和增益误差。

## Lineare Regressionsanalyse

线性回归分析

Um statistische Abweichungen bei der Messwertaufnahme auszumitteln, besteht die Möglichkeit der Durchschnittsbildung von mehreren Messwerten in einem Betriebspunkt [1]. Eine weitere Möglichkeit bietet die Regressionsanalyse, bei der die Messwerte aus unterschiedlichen Betriebspunkten gemittelt werden.

为了平均测量数据采集中的统计偏差，可以对同一工作点的多个测量值取平均 [1]。另一种方法是回归分析，即综合不同工作点的测量数据进行拟合。

Dabei wird der lineare Zusammenhang zwischen einer unabhängigen Variable $x$ und einer davon abhängigen – mit einer statistischen Abweichung behafteten – Variable $y$ nach der Methode der kleinsten Quadrate approximiert [4]. Man erhält somit eine Gerade mit der Steigung

使用最小二乘法 [4]，可以近似描述自变量 $x$ 与带有统计偏差的因变量 $y$ 之间的线性关系。由此得到一条直线，其斜率为：

$m=\frac{\sum_{i=1}^{N}(x_i-\bar{x})(y_i-\bar{y})}{\sum_{i=1}^{N}(x_i-\bar{x})^2}. \qquad (2.4)$

$m=\frac{\sum_{i=1}^{N}(x_i-\bar{x})(y_i-\bar{y})}{\sum_{i=1}^{N}(x_i-\bar{x})^2}。\qquad (2.4)$

und der Verschiebung

其截距为：

$b=\bar{y}-m\bar{x}=\frac{1}{N}\sum_{i=1}^{N}y_i-m\cdot\frac{1}{N}\sum_{i=1}^{N}x_i. \qquad (2.5)$

$b=\bar{y}-m\bar{x}=\frac{1}{N}\sum_{i=1}^{N}y_i-m\cdot\frac{1}{N}\sum_{i=1}^{N}x_i。\qquad (2.5)$

Einen weiteren interessanten Kennwert der Regressionsgeraden bildet der empirische Korrelationskoeffizient

回归直线的另一个重要指标是经验相关系数：

$r=\frac{\sum_{i=1}^{N}(x_i-\bar{x})(y_i-\bar{y})}{\sqrt{\sum_{i=1}^{N}(x_i-\bar{x})^2\cdot\sum_{i=1}^{N}(y_i-\bar{y})^2}}. \qquad (2.6)$

$r=\frac{\sum_{i=1}^{N}(x_i-\bar{x})(y_i-\bar{y})}{\sqrt{\sum_{i=1}^{N}(x_i-\bar{x})^2\cdot\sum_{i=1}^{N}(y_i-\bar{y})^2}}。\qquad (2.6)$

welcher als Gütewert des angenommenen funktionalen Zusammenhangs interpretiert werden kann. Dabei sollte der Betrag dieses Koeffizienten einen Wert nahe Eins annehmen, um den Zusammenhang zu bestätigen.

该系数可解释为所假定函数关系的拟合优度指标。为了确认这种关系，该系数的绝对值应接近 1。

## Hausaufgaben zu Teil 1 und 2

第 1 部分和第 2 部分的课后作业

a) Welche Thermospannung liefert ein NiCr-Ni Thermoelement bei einer Referenztemperatur von 0 °C und einer Messstellentemperatur von 100 °C?

a）当参考温度为 0 °C、测量点温度为 100 °C 时，NiCr-Ni 热电偶会产生多大的热电压？

b) Welche Ausgangsspannung liefert der Messwandler AD595 bei einer Messstellentemperatur von 100 °C? Erklären sie grob wie die Referenzierung der Temperaturmessung mit dem Messwandler AD595 nach Herstellervorgabe erfolgen muss (siehe Datenblatt AD595).

b）当测量点温度为 100 °C 时，测量变换器 AD595 输出多大的电压？请简要说明根据制造商规定，使用 AD595 进行温度测量时应如何实现参考温度补偿（见 AD595 数据手册）。

c) Welche Spannungsauflösung (LSB) besitzt ein 8 Bit-AD-Wandler, wenn er mit einem Eingangsspannungsbereich von 0 V bis 5 V betrieben werden kann?

c）当 8 位 AD 转换器的输入电压范围为 0 V 至 5 V 时，其电压分辨率（LSB）是多少？

d) Welcher Temperaturbereich $[\vartheta_{min};\vartheta_{max}]$ lässt sich mit dem Messwandler AD595 und dem vorgegebenen AD-Wandler erfassen (ohne Einsatz von weiteren Messverstärkern oder Spannungsteilern)?

d）使用 AD595 测量变换器和给定的 AD 转换器，在不使用额外测量放大器或分压器的情况下，可测量的温度范围 $[\vartheta_{min};\vartheta_{max}]$ 是多少？

e) Von welcher Genauigkeit (kleinste erfassbare Temperaturänderung $\Delta\vartheta$) kann dabei ausgegangen werden?

e）在这种情况下，可达到怎样的精度（可检测的最小温度变化 $\Delta\vartheta$）？

f) Welche Grenzfrequenz $f_c$ darf ein Tiefpass 1. Ordnung maximal besitzen, um die Amplitude eines monofrequenten Störsignals bei 1 MHz um mindestens 60 dB zu dämpfen?

f）为了使 1 MHz 单频干扰信号的幅度至少衰减 60 dB，一阶低通滤波器的截止频率 $f_c$ 最大可取多少？

g) Skizzieren Sie das Amplitudenspektrum eines Rechtecksignals mit 50% Tastverhältnis mit der Periodendauer T.

g）请画出周期为 T、占空比为 50% 的矩形信号的幅度频谱。

h) Wie sieht das Amplitudenspektrum aus, wenn das Tastverhältnis nicht mehr 50% ist?

h）当占空比不再为 50% 时，幅度频谱是什么样的？

## Ablauf des Praktikumsversuchs Teil 1

实验第 1 部分的流程

1. Schließen Sie den Messwertumformer AD595 an eine Spannungsquelle und betrachten Sie das temperaturabhängige Ausgangssignal am Oszilloskop.

   将测量变换器 AD595 连接到电源，并在示波器上观察随温度变化的输出信号。

2. Wie hoch kann das Ausgangssignal aus dem AD595 verstärkt werden, wenn die Temperatur der Messstelle 120 °C nicht übersteigt und der AD-Wandler in einem Wertebereich von 0 V bis 5 V arbeitet? Dimensionieren Sie entsprechend die Beschaltung eines nicht-invertierenden Messverstärkers. Welche Verbesserung der Temperaturauflösung erreichen Sie durch die zusätzliche Verstärkung?

   当测量点温度不超过 120 °C，且 AD 转换器的工作范围为 0 V 至 5 V 时，AD595 的输出信号最多可以放大多少倍？据此设计同相测量放大器的电路参数。额外放大后，温度分辨率可以提高多少？

3. Beschalten Sie den Messverstärker mit den berechneten Widerstandswerten (mit den Widerstandsdekaden) und bauen Sie diesen nach dem Messwertumformer ein. Betrachten Sie nun das verstärkte temperaturabhängige Ausgangssignal am Oszilloskop.

   使用计算得到的电阻值（通过电阻箱）连接测量放大器，并将其接在测量变换器之后。随后在示波器上观察放大后的温度相关输出信号。

Abbildung 5: Messwertumformer AD595 mit nicht-invertierendem Messverstärker

图 5：带同相测量放大器的 AD595 测量变换器

4. Führen Sie den Messfühler Ihres Messsystems und den eines Referenzmesssystems in ein Ölbad und nehmen Sie für die Kalibrierung mehrere Punkte der Kennlinie (Spannung in Abhängigkeit von der Temperatur) auf.

   将本测量系统的测温探头和参考测量系统的探头放入油浴中，并为校准记录特性曲线上的多个点（电压随温度的变化）。

5. Schreiben Sie mit Matlab eine Funktion zur Bestimmung einer Ausgleichsgeraden aus den erfassten Messpunktepaaren mit den Ausgabeparametern Steigung, Verschiebung und Regressionskoeffizient.

   使用 Matlab 编写一个函数，根据采集到的测量点对求出拟合直线，并输出斜率、截距和回归系数。

6. Bestimmen Sie mit dieser Funktion und der aufgenommenen Punkteschar die Kalibrier- bzw. Kennlinienparameter Ihres Messsystems.

   使用该函数和采集到的数据点，确定测量系统的校准参数或特性曲线参数。

7. Lesen Sie in einer Schleife die Spannungswerte am Verstärkerausgang aus und rechnen Sie diese anhand der Kalibrierung in einen Temperaturwert um.

   在循环中读取放大器输出端的电压值，并根据校准结果将其转换为温度值。

8. Stellen Sie den Temperaturwert am Rechner kontinuierlich dar und vergleichen Sie diesen mit dem Referenzmesssystem.

   在计算机上连续显示温度值，并将其与参考测量系统进行比较。

# Teil 2: Unterdrückung von Störgrößen

第 2 部分：干扰量抑制

## Allgemeine Filteraufgabe

一般滤波任务

Ein Messsystem steht mit der Umwelt in Wechselwirkung. Das Ausgangssignal $y(t)$ hängt nicht allein von der Messgröße $u(t)$ ab, sondern im Allgemeinen auch von einigen Störgrößen $z(t)$.

测量系统会与环境发生相互作用。输出信号 $y(t)$ 不仅取决于被测量 $u(t)$，通常还会受到某些干扰量 $z(t)$ 的影响。

Abbildung 6: Ideales und reales Messsystem [3]

图 6：理想测量系统与实际测量系统 [3]

Zweckmäßig wird der Störgrößen-Einfluss durch die Wahl des Messprinzips und die Auslegung von Filterungen so gering wie möglich gehalten.

通常应通过选择合适的测量原理和设计滤波器，使干扰量的影响尽可能小。

Zwei Methoden bieten sich an, um ein Signal zu gewinnen, das in etwa dem Nutzsignal entspricht: Kompensation und Filterung.

为了获得与有用信号近似一致的信号，可以采用两种方法：补偿和滤波。

- Kompensation: Sind die wesentlichen Störgrößen $z(t)$ messbar, kann das Messsignal $y(t)$ in einer Kompensationsschaltung verarbeitet werden, so dass das Ausgangssignal weitgehend frei vom Einfluss des Störsignals ist.

  补偿：如果主要干扰量 $z(t)$ 可以测量，则可以在补偿电路中处理测量信号 $y(t)$，使输出信号基本不受干扰信号影响。

- Filterung: Eine Signalverarbeitung des gestörten Messsignals $y(t)$ kann ein verbessertes Signal für das Nutzsignal liefern.

  滤波：对受干扰的测量信号 $y(t)$ 进行信号处理，可以得到更接近有用信号的改进信号。

Für den Filterentwurf ist ein Signalmodell notwendig, welches die verfügbaren Informationen über den Signalverlauf enthält.

滤波器设计需要一个信号模型，其中包含关于信号变化过程的现有信息。

## Störungen/ Störgrößen

干扰／干扰量

In der Elektromagnetischen Verträglichkeit eines Gerätes (EMV) unterscheidet man zwischen leitungsgebundenen und feldgebundenen Störungen.

在设备的电磁兼容性（EMV）中，干扰可分为传导干扰和场耦合干扰。

### 1. Leitungsgebundene Störungen

### 1. 传导干扰

Die leitungsgebundenen Störungen werden von der Störquelle direkt über Versorgungs- oder Signalleitungen zur Störsenke übertragen.

传导干扰由干扰源通过电源线或信号线直接传输到受扰设备。

Ein Knacken im Radio kann zum Beispiel durch das Abschalten eines Kühlschranks verursacht werden, da das Abschalten der Versorgungsspannung mithilfe eines Temperaturschalters Spannungspulse mit einem Spektrum im hörbaren Frequenzbereich erzeugt. Wenn diese Spannungspulse über die Versorgungsleitung zum Radiogerät geführt und dort demoduliert werden, kommt es zu einer Knackstörung. Abhilfe schafft häufig Filterung.

例如，收音机中的爆裂声可能由冰箱断电引起，因为温控开关切断电源电压时会产生电压脉冲，其频谱落在可听频率范围内。如果这些电压脉冲经电源线传到收音机并在那里被解调，就会产生爆裂干扰。通常可通过滤波加以抑制。

Beispiele:

示例：

- Burst Störung: Elektromagnetische Störungen durch Veränderungen der Spannung und des Stromes.

  脉冲群干扰：由电压和电流变化引起的电磁干扰。

- Surge Störung: Störungen gegenüber unipolaren Stoßspannungen wie z.B. Schalten von induktiven oder kapazitiven Lasten in Hauptstromversorgungssystemen, Atmosphärische Entladungen wie Blitzeinschläge, Stromversorgungsausfälle, Elektrostatische Entladung, Spannungsveränderungen und Spannungsschwankungen.

  浪涌干扰：由单极性冲击电压引起的干扰，例如主供电系统中感性或容性负载的切换、大气放电（如雷击）、供电中断、静电放电、电压变化和电压波动。

### 2. Feldgebundene (gestrahlte) Störungen

### 2. 场耦合（辐射）干扰

Feldgebunde (gestrahlte) Störungen können zum Beispiel als elektromagnetisches Feld auf die Störsenke übertragen werden und dort von einem als Antenne fungierenden Leiter empfangen werden. Auch kapazitive und induktive Beeinflussungen elektrischer bzw. magnetischer Felder werden als feldgebundene Störungen bezeichnet.

场耦合（辐射）干扰可以通过电磁场传输到受扰设备，并由其中作为天线的导体接收。由电场或磁场产生的电容性和电感性耦合影响也称为场耦合干扰。

Ein Beispiel für eine feldgebundene Störung ist die Einkopplung einer GSM-Mobiltelefon-Übertragung in eine Audioeinrichtung, z. B. in ein Autoradio oder in ein Festnetztelefon. Grund dafür kann ein nicht ausreichend geschirmter Lautsprecher oder Kabel sein.

场耦合干扰的一个例子是 GSM 移动电话信号耦合进入音频设备，例如汽车收音机或固定电话。其原因可能是扬声器或电缆的屏蔽不足。

Beispiele:

示例：

- Elektrofeld-Störung: durch ortsfeste und mobile Funksender

  电场干扰：由固定式和移动式无线电发射机引起。

- Magnetfeld-Störung: durch Hochspannungsleitungen

  磁场干扰：由高压输电线路引起。

- Pulsierende Magnetfeld-Störung: durch indirekte Blitzeinwirkungen

  脉冲磁场干扰：由间接雷电影响引起。

## Filter

滤波器

Filter spielen eine große Rolle innerhalb der Messtechnik [2], da diese, abhängig von ihrer Grenzfrequenz, ungewünschte Frequenzen aus dem Eingangssignal filtern. Man unterscheidet zwischen digitalen und analogen Filtern, die jeweils als Tiefpass-, Hochpass- oder Bandpass-Filter ausgelegt sein können.

滤波器在测量技术中具有重要作用 [2]，它们根据各自的截止频率，从输入信号中滤除不需要的频率成分。滤波器分为数字滤波器和模拟滤波器，两者都可以设计为低通、高通或带通滤波器。

### CR-Filter

### CR 滤波器

Ein Hochpass lässt Spannungen/Amplituden mit hohen Frequenzen durch. Üblicherweise wird ein Quellwiderstand vorausgesetzt, der klein genug ist, um die Übergangsfrequenz nicht zu verändern.

高通滤波器允许高频电压或幅度分量通过。通常假定信号源电阻足够小，不会改变转折频率。

Abbildung 7: CR-Filter (Hochpass 1. Ordnung)

图 7：CR 滤波器（一阶高通）

### RC-Filter

### RC 滤波器

Ein Tiefpass lässt Spannungen/Amplituden mit tiefen Frequenzen durch. Auch nach Tausch von Widerstand und Kondensator, bleiben die Werte der Grenzfrequenz und der Zeitkonstante unverändert.

低通滤波器允许低频电压或幅度分量通过。即使交换电阻和电容的位置，截止频率和时间常数的数值仍保持不变。

Abbildung 8: RC-Filter (Tiefpass 1. Ordnung)

图 8：RC 滤波器（一阶低通）

Die Grenzfrequenz $f_c$ ist bei einem RC-Filter von dem Widerstand $R$ und der Kapazität $C$ des Kondensators anhängig [2].

RC 滤波器的截止频率 $f_c$ 取决于电阻 $R$ 和电容器的电容量 $C$ [2]。

$f_c=\frac{1}{2\pi\cdot R\cdot C}$

$f_c=\frac{1}{2\pi\cdot R\cdot C}$

In dem zweiten Teil des Versuchs wird das Sensorsignal mit einem Störsignal überlagert. Im Anschluss soll der Störanteil des Signals mit Hilfe eines RC-Filters unterdrückt werden.

在实验的第二部分中，传感器信号将与干扰信号叠加。随后使用 RC 滤波器抑制信号中的干扰成分。

## Ablauf des Praktikumsversuchs Teil 2

实验第 2 部分的流程

1. Betrachten Sie die Frequenz der Störsignalquelle (Pulsgenerator) am Oszilloskop.

   在示波器上观察干扰信号源（脉冲发生器）的频率。

2. Verbinden Sie den Messverstärker-Ausgang (verstärktes Sensorsignal) und der Störsignalquelle mit Hilfe eines Subtrahierers.

   使用减法器连接测量放大器输出端（放大后的传感器信号）和干扰信号源。

3. Dimensionieren Sie den Widerstand $R$ und die Kapazität des Kondensators $C$ eines anschließenden Filters zur Störsignalunterdrückung.

   设计后级滤波器的电阻 $R$ 和电容器电容量 $C$，以抑制干扰信号。

4. Nutzen Sie die eben berechneten Werte der Kapazität und des Widerstands, um den Filter (mit der Kapazitäts- und Widerstandsdekade) zu beschalten. Betrachten Sie nun das gefilterte temperaturabhängige Ausgangsignal am Oszilloskop.

   使用刚刚计算出的电容值和电阻值，通过电容箱和电阻箱连接滤波器。随后在示波器上观察滤波后的温度相关输出信号。

Abbildung 9: Störsignalquelle am Eingang E1 des Subtrahierers mit anschließendem RC-Filter. Das Ausgangssignal ausVersuchs-Teil 1 wird am Eingang E2 eingespeist.

图 9：干扰信号源接入减法器输入端 E1，后接 RC 滤波器。实验第 1 部分的输出信号接入输入端 E2。

5. Wiederholen Sie die Schritte 7 und 8 des ersten Versuchsabschnittes und vergleichen Sie die Ergebnisse.

   重复实验第一部分的步骤 7 和 8，并比较结果。

## Quellen / weiterführende Literatur

参考文献／延伸阅读

[1] C. Rembe; Skript Messtechnik 1

[1] C. Rembe；《测量技术 1》讲义

[2] E. Schrüfer, et al.; Elektrische Messtechnik; Carl Hanser Verlag, 11. Auflage, 2014

[2] E. Schrüfer 等；《电气测量技术》；Carl Hanser 出版社，第 11 版，2014 年

[3] C. Bohn; Skript Regelungstechnik 1

[3] C. Bohn；《控制工程 1》讲义

[4] I. N. Bronstein; Taschenbuch der Mathematik; Verlag Harri Deutsch, 5. Auflage, 2011

[4] I. N. Bronstein；《数学手册》；Harri Deutsch 出版社，第 5 版，2011 年
