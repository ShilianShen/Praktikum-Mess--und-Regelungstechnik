# Institut für Elektrische Informationstechnik

电气信息技术研究所

Prof. Dr.-Ing. C. Bohn, Prof. Dr.-Ing. C. Rembe

C. Bohn 工学博士教授，C. Rembe 工学博士教授

# Mess- und Regelungstechnisches Praktikum

测量与控制技术实验

# Versuch 4: Kapazitive Füllstandsmessung

实验 4：电容式液位测量

In der Regel existieren verschiedene Möglichkeiten zur Aufnahme einer Messgröße. Für die Bestimmung einer Füllstandshöhe sind zum Beispiel Methoden mit einem Schwimmer, einem Ultraschallecholot, einer Wasserdruckmessung oder die kapazitive Füllstandsmessung weit verbreitet. Letztere soll im Rahmen dieses Praktikums eingesetzt werden.

通常，获取一个测量量有多种不同的方法。例如，在确定液位高度时，浮子法、超声回声测深法、水压测量法或电容式液位测量法都得到了广泛应用。本实验将采用最后一种方法。

Bei der kapazitiven Füllstandsmessung wird der Effekt ausgenutzt, dass die Kapazität eines Kondensators vom dielektrischen Medium zwischen den Kondensatorflächen abhängt. Wird zum Beispiel ein Luftkondensator in Wasser getaucht, so verändert sich seine Kapazität in Abhängigkeit von der Eintauchtiefe. Bei einem feststehenden Kondensator lässt sich mit Hilfe einer Kapazitätsmessung ein Rückschluss auf die Wasserhöhe ziehen.

电容式液位测量利用了电容器的电容量取决于电极板之间介电介质这一效应。例如，将一个空气电容器浸入水中时，其电容量会随浸入深度而变化。对于位置固定的电容器，可以通过测量电容量来推断水位高度。

Abbildung 1: Schematischer Aufbau der kapazitiven Füllstandsmessung

图 1：电容式液位测量的示意结构

Für die Kapazitätsmessung wird ein Oszillator mit einem LC-Schwingkreis als Taktgeber genutzt. Somit lässt sich aus der Resonanzfrequenz des Schwingkreises (bzw. aus dem Oszillatortakt) bei bekannter Induktivität auf die Kapazität des Messkondensators schließen. Der Oszillatorausgang wird dazu mit Hilfe einer Messkarte digitalisiert, damit der Oszillatortakt mit einer digitalen Zählschaltung im Rechner bestimmt werden kann.

为了测量电容量，使用带有 LC 振荡回路的振荡器作为时钟源。这样，在电感已知的情况下，就可以根据振荡回路的谐振频率（或振荡器时钟）推算测量电容器的电容量。为此，振荡器输出通过测量卡进行数字化，以便在计算机中使用数字计数电路确定振荡器时钟。

## Kapazität eines Plattenkondensators

## 平板电容器的电容量

Die Kapazität $C$ eines Kondensators kennzeichnet seine Fähigkeit, einen Strom in Form einer Ladung $Q$ zu speichern. Mit einem Dielektrikum zwischen den Kondensatorelektroden lässt sich die Kapazität des Kondensators weiter erhöhen (siehe Abbildung 2).

电容器的电容量 $C$ 表征其以电荷 $Q$ 的形式储存电流的能力。在电容器电极之间加入电介质，可以进一步提高电容器的电容量（见图 2）。

Abbildung 2: Plattenkondensator mit Dielektrikum

图 2：带电介质的平板电容器

Diese Erscheinung wird über die werkstoffabhängige Permittivitätszahl charakterisiert. So berechnet sich die Kapazität eines Kondensators, bestehend aus zwei parallel angeordneten Kondensatorflächen, zu

这种现象由与材料有关的介电常数来表征。由两个平行布置的电极板构成的电容器，其电容量计算如下：

$C_{\mathrm{Plattenkondensator}}=\frac{Q}{U}=\varepsilon\frac{A}{d}=\varepsilon_0\varepsilon_r\frac{A}{d}\qquad(4.1)$

wobei $A$ die Kondensatorfläche, $d$ den Plattenabstand und $\varepsilon$ die Permittivität charakterisiert. Die Permittivität gibt die Durchlässigkeit eines Materials für elektrische Felder an und setzt sich aus der elektrischen Feldkonstante $\varepsilon_0$ und der relativen Permittivität $\varepsilon_r$ zusammen. Ist die Kondensatorgeometrie bekannt, lässt sich aus der Kapazität auf die relative Permittivität des Dielektrikums schließen.

其中，$A$ 表示电容器极板面积，$d$ 表示极板间距，$\varepsilon$ 表示介电常数。介电常数表示材料对电场的通透能力，由真空介电常数 $\varepsilon_0$ 和相对介电常数 $\varepsilon_r$ 组成。当电容器的几何尺寸已知时，可以根据电容量推算电介质的相对介电常数。

Die Kapazität von zwei parallel verlaufenden Leitern, auch als Lecher-Leitung bekannt, lässt sich mit

两根平行导线的电容量（也称为 Lecher 线）可通过下式确定：

$C_{\mathrm{Lecher}}=\frac{\pi\varepsilon l}{\operatorname{arcosh}\left(\frac{d}{2R}\right)}\qquad(4.2)$

bestimmen, wobei $l$ für die Länge der Leiter, $d$ für den Abstand zwischen den Leitermittelpunkten und $R$ für den Radius der Leiter steht.

其中，$l$ 表示导线长度，$d$ 表示两根导线中心之间的距离，$R$ 表示导线半径。

## Prinzip eines LC-Schwingkreises

## LC 振荡回路原理

Die Kapazität eines Kondensators kann mit einer komplexen Brückenschaltung oder einem Schwingkreis experimentell ermittelt werden. Im Praktikum soll die Kapazitätsbestimmung mit einem LC-Schwingkreis nach dem Resonanzprinzip erfolgen. Dazu wird die unbekannte Messkapazität in einer Parallelschaltung mit einer bekannten Induktivität ergänzt.

电容器的电容量可以通过复数电桥电路或振荡回路进行实验测定。本实验将依据谐振原理，使用 LC 振荡回路测定电容量。为此，将未知的测量电容与一个已知电感并联连接。

Abbildung 3: LC-Parallelschwingkreis

图 3：LC 并联振荡回路

Der Resonanzfall liegt bei der Frequenz, bei welcher sich die maximale Impedanz der Parallelschaltung einstellt. Unter der Annahme eines verlustlosen Schwingkreises lässt sich der komplexe Widerstand zu

谐振发生在并联电路阻抗达到最大值的频率处。在假设振荡回路无损耗的情况下，其复阻抗可计算为：

$Z_{\mathrm{ges}}=\frac{1}{\frac{1}{Z_L}+\frac{1}{Z_C}}=\frac{Z_L\cdot Z_C}{Z_L+Z_C}=\frac{j\omega L\cdot\frac{1}{j\omega C}}{j\omega L+\frac{1}{j\omega C}}=\frac{j\omega L}{1-\omega^2LC}\qquad(4.3)$

berechnen.

可由上式计算。

Mit der Forderung nach einer maximalen Impedanz eines solchen Schwingkreises kann daraus direkt auf die Resonanzfrequenz geschlossen werden:

根据这种振荡回路阻抗最大的条件，可以直接推导出谐振频率：

$Z_{\mathrm{ges}}\to\infty\Rightarrow 1-\omega^2LC=0\Leftrightarrow\omega=\frac{1}{\sqrt{LC}}\Leftrightarrow f=\frac{1}{2\pi\sqrt{LC}}\qquad(4.4)$

Andersherum betrachtet resultiert aus der Resonanzfrequenz (bei bekannter Induktivität) der kapazitative Anteil.

反过来看，在电感已知的情况下，可以由谐振频率求出电容分量。

## Grundlagen Oszillatorschaltung

## 振荡器电路基础

Für eine genaue Bestimmung der Resonanzfrequenz wird ein solcher Schwinger praktischerweise in eine Oszillatorschaltung integriert. Eine solche Schaltung beinhaltet einen selbstregelnden Oszillator, welcher sich auf die Resonanzfrequenz des taktgebenden Elementes (Schwingkreis oder Schwingquarz) einschwingt und diese Schwingung zur weiteren Auswertung als periodisches Signal permanent ausgeben kann. Im Rahmen dieses Versuchs wird eine Verstärkerstufe entsprechend Abbildung 4 als Oszillator eingesetzt, welche über einen weiten Frequenzbereich auch bei hohem Verlustwiderstand ein sicheres Einschwingverhalten des Schwingkreises aufweist.

为了精确确定谐振频率，通常将这种振荡系统集成到振荡器电路中。这种电路包含一个自调节振荡器，它会稳定在定时元件（振荡回路或石英晶体）的谐振频率上，并持续输出该振荡作为周期信号，以供进一步分析。本实验采用图 4 所示的放大级作为振荡器；即使损耗电阻较大，该电路在较宽频率范围内也能保证振荡回路可靠起振。

Abbildung 4: LC-Schwingkreis mit Verstärkerstufe als Oszillator

图 4：以放大级作为振荡器的 LC 振荡回路

## Grundlagen der digitalen Frequenzmessung

## 数字频率测量基础

Das Prinzip einer Frequenzmessung beruht auf einem Vergleich der zu bestimmenden Frequenz mit einem hinreichend genauen Referenztakt. Bei der digitalen Frequenzmessung werden die Frequenzperioden aus dem Referenzsignal und dem Messsignal (zum Beispiel mit einem Schmitt-Trigger) in Impulse überführt und ausgezählt. Aus dem Vergleich der Zählerstände lässt sich bei bekanntem Referenztakt auf die Messfrequenz schließen.

频率测量的原理是将待测频率与足够精确的参考时钟进行比较。在数字频率测量中，参考信号和测量信号的周期会被转换为脉冲（例如通过施密特触发器），然后进行计数。在参考时钟已知的情况下，可以通过比较计数器的读数推算测量频率。

Abbildung 5: Frequenzmessung mit digitalen Komponenten

图 5：使用数字元件进行频率测量

Ein typischer Aufbau für eine digitale Frequenzmessung ist in Abbildung 5 dargestellt. Zum Starten der Messung werden die beiden Gatter über ein RS-Flipflop geöffnet. Somit wird sowohl der Referenztakt $f_0$ als auch der Messtakt $f_x$ zu den beiden Zählern durchgelassen. Das Ende der Messung wird ebenso über das RS-Flipflop ausgelöst, welches die Gatter wieder schließt. Die Messdauer $T_{\mathrm{Mess}}$ resultiert aus dem Referenztakt $f_0$ und der Anzahl der gezählten Referenztaktimpulse $N_0$, während sich die gesuchte Frequenz $f_x$ wiederum aus der Anzahl der Messtakte $N_x$ während Messdauer $T_{\mathrm{Mess}}$ ergibt:

图 5 展示了一种典型的数字频率测量结构。开始测量时，通过 RS 触发器打开两个门电路，使参考时钟 $f_0$ 和测量时钟 $f_x$ 分别传递至两个计数器。测量结束同样由 RS 触发器触发，此时门电路重新关闭。测量时长 $T_{\mathrm{Mess}}$ 由参考时钟 $f_0$ 和所计数的参考时钟脉冲数 $N_0$ 决定，而待求频率 $f_x$ 则由测量时长 $T_{\mathrm{Mess}}$ 内的测量时钟脉冲数 $N_x$ 得到：

$f_x=\frac{N_x}{T_{\mathrm{Mess}}}=f_0\frac{N_x}{N_0}\qquad(4.5)$

Oft wird vor das Eingangssignal mit der unbekannten Frequenz durch einen Komparator oder ein Schmitt-Trigger mit entsprechenden Schaltschwellen bearbeitet, um aus dem Signal klar definierte Impulsflanken für den Zähler bzw. das Gatter zu erzeugen.

通常，在处理频率未知的输入信号时，会先使用具有相应开关阈值的比较器或施密特触发器，以便从信号中产生边沿定义清晰的脉冲，供计数器或门电路使用。

Im Versuch steht ein Komparator zur Verfügung. Die Ausgangsspannung eines Komparators erreicht den Pegel $U_{a,\max}$ wenn die Spannung am positiven, nicht invertierenden Eingang höher ist als die Spannung am negativen, invertierenden Eingang. Umgekehrt sinkt die Spannung auf $U_{a,\min}$.

实验中提供了一个比较器。当正相、非反相输入端的电压高于负相、反相输入端的电压时，比较器的输出电压达到电平 $U_{a,\max}$。反之，输出电压下降到 $U_{a,\min}$。

Es gilt also:

因此有：

$U_a=\begin{cases}U_{a,\max}&\text{für }U_1>U_2\\U_{a,\min}&\text{für }U_1<U_2\end{cases}$

Abbildung 6: Schaltbild eines Komparators und dessen Übertragungskennlinie

图 6：比较器电路图及其传输特性曲线

Weiterhin steht ein digitaler Frequenzzähler zur Verfügung, um die Frequenz des Ausgangssignals des Komparators zu bestimmen.

此外，还提供了一个数字频率计，用于确定比较器输出信号的频率。

## Grundlagen Schmitt-Trigger

## 施密特触发器基础

Für eine automatische Frequenzermittlung am Rechner soll während des Versuchs ein Schmitt-Trigger in Matlab-Code realisiert werden.

为了在计算机上自动确定频率，实验过程中需要使用 Matlab 代码实现一个施密特触发器。

Ein Schmitt-Trigger ist als Schalter zu verstehen, der im Gegensatz zu einem Komparator nicht nur eine Schaltschwelle hat. Er schaltet seine Ausgangsspannung bei Erreichen einer positiven Schaltschwelle $U_{\mathrm{EIN}}$ am Eingang nach $U_{A,\max}$ und bei Erreichen einer negativen Schaltschwelle $U_{\mathrm{AUS}}$ nach $U_{A,\min}$ (siehe Abbildung 7).

施密特触发器可以理解为一种开关。与比较器不同，它不只具有一个开关阈值。当输入达到正开关阈值 $U_{\mathrm{EIN}}$ 时，其输出电压切换到 $U_{A,\max}$；当输入达到负开关阈值 $U_{\mathrm{AUS}}$ 时，输出电压切换到 $U_{A,\min}$（见图 7）。

Aufgrund dieser Hysterese führen verrauschte Signale nicht zu ungewollten Zustandssprüngen am Schwellwert. Da dabei ein wertekontinuierliches Signal in ein Signal mit zwei stabilen Zuständen gewandelt wird, ist eine saubere Aufbereitung von Sensorsignalen für eine Impulsauswertung durch eine digitale Zählschaltung möglich.

由于存在这种滞回特性，带噪声的信号不会在阈值附近造成不希望出现的状态跳变。由于连续取值的信号被转换成具有两个稳定状态的信号，因此可以对传感器信号进行清晰整形，以便由数字计数电路进行脉冲分析。

Abbildung 7: Verhalten eines nicht-invertierenden Schmitt-Triggers

图 7：非反相施密特触发器的行为

## Grundlagen systematischer Fehlerfortpflanzung

## 系统误差传播基础

Bei vielen Messaufgaben ist eine Größe $y$ nicht direkt messbar, sondern setzt sich indirekt, nach einer festgelegten mathematischen Beziehung $y=f(x_1,x_2,\ldots,x_i)$, aus mehreren Einflussgrößen $x_i$ zusammen. Für die Fortpflanzung systematischer Abweichungen ergibt sich bei Einflussgrößen mit systematischer Abweichung eine Messabweichung von

在许多测量任务中，量 $y$ 无法直接测量，而是依据给定的数学关系 $y=f(x_1,x_2,\ldots,x_i)$，由多个影响量 $x_i$ 间接组成。对于具有系统偏差的影响量，系统偏差传播所导致的测量偏差为：

$\Delta y=\frac{\partial f}{\partial x_1}\cdot\Delta x_1+\frac{\partial f}{\partial x_2}\cdot\Delta x_2+\cdots+\frac{\partial f}{\partial x_i}\cdot\Delta x_i\qquad(4.6)$

Mit Hilfe dieses Fehlerfortpflanzungsgesetzes lässt sich der Einfluss der erwarteten Abweichungen angeben. Selbst bei unbekannten Fehlern der einzelnen Messungen kann eine Tendenz über die Auswirkung der jeweiligen Messgröße formuliert werden.

借助这一误差传播定律，可以给出预期偏差的影响。即使各次测量的误差未知，也可以描述各测量量对结果影响的趋势。

## Hausaufgaben:

## 课后作业：

a) Berechnen Sie mit Hilfe der Formel 4.2 die Kapazität von zwei parallel verlaufenden Leitern mit der Länge 600 mm, dem Leiterdurchmesser 10 mm und dem Leiterabstand 20 mm. $(\varepsilon_{r,\mathrm{Luft}}\approx 1,\ \varepsilon_0=8{,}854\cdot10^{-12}\ \mathrm{As/(Vm)})$

a) 使用公式 4.2 计算两根平行导线的电容量。导线长度为 600 mm，导线直径为 10 mm，导线间距为 20 mm。$(\varepsilon_{r,\mathrm{空气}}\approx 1,\ \varepsilon_0=8.854\cdot10^{-12}\ \mathrm{As/(Vm)})$

b) Welche Kapazität weist ein identisches, in Wasser getauchtes, Leiterpaar auf? $(\varepsilon_{r,\mathrm{Wasser}}\approx 80)$

b) 一对尺寸相同、浸入水中的导线具有多大的电容量？$(\varepsilon_{r,\mathrm{水}}\approx 80)$

c) Welche minimale und maximale Frequenz stellt sich nach Formel 4.2 in einem Schwingkreis ein, sobald die oben bestimmte Kapazität mit einer Spule von 100 µH parallel geschaltet wird?

c) 当上述求得的电容与一个 100 µH 的线圈并联后，根据公式 4.2，振荡回路中会出现怎样的最小频率和最大频率？

d) Wie hoch ist im Allgemeinen der Zählfehler einer digitalen Zählschaltung?

d) 一般而言，数字计数电路的计数误差有多大？

e) Wie wirkt sich ein Zählfehler auf den Frequenzwert einer digitalen Frequenzmessung aus (nutzen Sie dazu die Fortpflanzung systematischer Abweichungen)?

e) 计数误差会如何影响数字频率测量所得的频率值（请使用系统偏差传播方法）？

f) Wie viele Samples müssen bei einer Referenzfrequenz von 1 MHz aufgenommen werden, um bei einer digitalen Frequenzbestimmung eine Messunsicherheit von mindestens ±1 Hz einzuhalten? Welche Messdauer ist dafür erforderlich?

f) 当参考频率为 1 MHz 时，为了在数字频率测定中保证至少 ±1 Hz 的测量不确定度，需要采集多少个样本？相应的测量时长是多少？

## Praktikumsversuch:

## 实验步骤：

1. Schließen Sie die Oszillatorschaltung an eine Spannungsquelle an und betrachten Sie das Ausgangssignal in Abhängigkeit von der Eintauchtiefe des Kondensators mit Hilfe eines Oszilloskops.

1. 将振荡器电路连接到电源，并使用示波器观察输出信号随电容器浸入深度的变化。

2. Schließen Sie den Komparator an die Oszillatorschaltung an und betrachten Sie das Ausgangssignal erneut.

2. 将比较器连接到振荡器电路，并再次观察输出信号。

3. Lesen Sie die Frequenz des Ausgangssignals, mit Hilfe eines Frequenzzählers, für verschiedene Eintauchtiefen des Kondensators (vollständig, zur Hälfte, in der Luft) ab.

3. 使用频率计读取电容器在不同浸入深度（完全浸入、浸入一半、位于空气中）时输出信号的频率。

4. Lesen Sie die Signalwerte der Oszillatorschaltung über eine Messkarte in den Rechner (Matlab) ein. Verwenden Sie dabei das Matlab-Skript „main.m“ im Ordner „Matlab_Vorlage“ auf dem Desktop des Versuchsrechners. Stellen Sie eine passende Abtastrate für das Signal ein.

4. 通过测量卡将振荡器电路的信号值读入计算机（Matlab）。使用实验计算机桌面上“Matlab_Vorlage”文件夹中的 Matlab 脚本“main.m”。为信号设置合适的采样率。

5. Programmieren Sie eine Schmitt-Trigger-Funktion mit der unteren und oberen Schaltschwelle als Eingangsparameter (vgl. Abbildung 7). Testen Sie die Funktion mit einem Sinussignal.

5. 编写一个施密特触发器函数，将下开关阈值和上开关阈值作为输入参数（参见图 7）。使用正弦信号测试该函数。

6. Bestimmen Sie aus der gewonnenen Impulsfolge die Anzahl der Impulse.

6. 根据得到的脉冲序列确定脉冲数量。

7. Rechnen Sie daraus wiederum die Frequenz der Impulse aus (benutzen Sie dazu die in Aufgabe 4 eingestellte Abtastrate).

7. 由此计算脉冲频率（使用任务 4 中设置的采样率）。

8. Automatisieren Sie die programmierten Schritte in einer Schleife und stellen Sie den Frequenzwert kontinuierlich dar.

8. 在循环中自动执行所编写的步骤，并连续显示频率值。

## Liste verfügbarer Geräte:

## 可用设备列表：

Oszilloskop

示波器

Frequenzzähler

频率计

Netzteil

电源

Kondensator

电容器

Wasserbehälter

水容器

Komparator

比较器

Versuchsrechner

实验计算机
