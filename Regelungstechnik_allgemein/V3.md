# Institut für Elektrische Informationstechnik

> 电气信息技术研究所

Prof. Dr.-Ing. C. Bohn, Prof. Dr.-Ing. C. Rembe

> C. Bohn 教授（工程学博士）、C. Rembe 教授（工程学博士）

# MRT Praktikum SS 2026

> 2026 年夏季学期 MRT 实验课

## Versuch 3: Temperaturregelstrecke

> 实验 3：温度控制对象

Das von Ihnen zu untersuchende System ist eine Temperaturregelstrecke wie in Abbildung 1 gezeigt. Die Temperaturregelstrecke besteht im Wesentlichen aus einem Metallrohr in dessen Inneren drei Glühkerzen als Heizelemente angebracht sind. Die Temperatur an den Heizelementen wird über ein PWM Signal reguliert und ist über eine Spannungsvorgabe einzustellen. Mit den beiden Ventilatoren am Ein- und Ausgang des Metallrohrs kann ein Luftmassenstrom, ebenfalls durch Vorgabe einer Spannung, eingestellt werden. Der sich einstellende Luftmassenstrom kann mit einem entsprechenden Messgerät am Ausgang der Messstrecke kontrolliert werden. Zusätzlich werden an drei Stellen im Rohr die Temperaturen erfasst, T1 am Eingang der Messstrecke, T2 direkt neben den Heizelementen und T3 am Ausgang der Messstrecke.

> 待研究的系统是图 1 所示的温度控制对象。该温度控制对象主要由一根金属管构成，管内安装有三根作为加热元件的电热塞。加热元件处的温度通过 PWM 信号调节，并可通过给定电压进行设定。通过金属管入口和出口处的两个风扇，也可以通过给定电压来设定空气质量流量。形成的空气质量流量可通过测量段出口处的相应测量仪器进行检查。此外，还在管内三个位置测量温度：T1 位于测量段入口，T2 位于加热元件旁，T3 位于测量段出口。

Abbildung 1: Versuchsaufbau Temperaturregelstrecke

> 图 1：温度控制对象实验装置

Bei der hier vorliegenden Temperaturregelstrecke handelt es sich um ein System mit nichtlinearem Verhalten. Die Temperatur an den Heizelementen kann beispielsweise über die Spannung eingestellt werden, eine Temperatur unterhalb der Raumtemperatur ist allerdings nicht möglich und eine Abhängigkeit der Temperatut T2 von der eingestellten Spannung daher nur in Teilbereichen des Systemverhaltens gegeben.

> 这里的温度控制对象是一个具有非线性行为的系统。例如，加热元件处的温度可以通过电压设定，但无法获得低于室温的温度，因此，温度 T2 对设定电压的依赖关系只存在于系统行为的部分范围内。

Das Übertragungsverhalten der Temperaturregelstrecke sei zunächst unbekannt und soll durch Versuche ermittelt werden. Dabei muss zunächst geklärt werden ob es sich hierbei um ein nichtlineares oder ein lineares System handelt. Zudem gilt es eine Beschreibungsform zu finden, die das Ein-/ Ausgangsverhalten ausreichend genau beschreibt.

> 首先假定该温度控制对象的传递特性未知，并通过实验加以确定。为此，首先必须明确它是非线性系统还是线性系统。此外，还需要找到一种能够足够准确地描述输入/输出行为的表达形式。

Die Beschreibung nichtlinearer Systeme ist dabei oft schwierig, da häufig das Ein-/ Ausgangsverhalten vom Eingangssignal abhängt und somit nicht allgemeingültig beschrieben werden kann. Daher wird bei nichtlinearen Systemen wenn möglich eine Linearisierung um einen Arbeitspunkt durchgeführt um dennoch eine Beurteilung und Regelung des Systems zu erreichen. Für so eine Linearisierung benötigt man jedoch ein Modell des Systems. Da die Modellbildung mit Unter sehr aufwändig seien kann, versucht man häufig das System einem linearen Standardübertragungsglied anzunähern. Beim vorliegenden System soll deshalb ein lineares Übertragungsglied aus Messungen identifiziert werden. Unter Annahme dieses linearen Übertragungsverhaltens soll ein Kompensationsregler entworfen werden. Der Entwurf eines Kompensationsreglers sei im Folgenden kurz zusammengefasst.

> 非线性系统的描述通常比较困难，因为其输入/输出行为往往取决于输入信号，因此无法作出普遍适用的描述。所以，对于非线性系统，只要可能，通常会在某个工作点附近进行线性化，以便仍然能够分析和控制该系统。然而，这种线性化需要系统模型。由于建模有时可能非常耗费工作量，因此常常尝试用一个标准线性传递环节来近似系统。对于本系统，将通过测量辨识一个线性传递环节。在假定具有这种线性传递特性的基础上，设计一个补偿控制器。下面简要总结补偿控制器的设计方法。

## Algebraischer Reglerentwurf, Kompensationsregler

> 代数控制器设计，补偿控制器

Abbildung 2: Blockschaltbild des Standardregelkreises

> 图 2：标准闭环控制系统框图

Beim algebraischen Reglerentwurf oder Kompensationsreglerentwurf wird ausgehend von dem Standardregelkreis (Abbildung 2), eine Reglerübertragungsfunktion aufgestellt, so dass der geschlossene Regelkreis ein gewisses Wunschverhalten aufweist. Dabei definiert man das Wunschverhalten häufig an der Sprungantwort eines Systems mit einer zuvor definierten Struktur. So kann zum Beispiel das Überschwingen und die Ausregelzeit durch geeignete Wahl von Polstellen einer Wunschübertragungsfunktion $G_M(s)$ der Form

> 在代数控制器设计或补偿控制器设计中，以标准闭环控制系统（图 2）为出发点，建立控制器传递函数，使闭环控制系统具有某种期望行为。通常通过具有预先规定结构的系统阶跃响应来定义期望行为。例如，可以通过适当选择如下形式的期望传递函数 $G_M(s)$ 的极点来设定超调量和调节时间：

$G_M=\frac{b_0+b_1s+\cdots+b_ms^m}{a_0+a_1s+\cdots+a_ns^n}=\frac{B_M}{A_M}$  (1)

> $G_M=\frac{b_0+b_1s+\cdots+b_ms^m}{a_0+a_1s+\cdots+a_ns^n}=\frac{B_M}{A_M}$  （1）

eingestellt werden. Näheres zu Anforderungen an den Regelkreis und wie diese durch die Wahl der Übertragungsfunktion beeinflusst werden sind im Skript zu Regelungstechnik I auf den Seiten 415-462 (Stand: Juni 2014) bzw. S. 453-510 (Stand 1/2019) zu finden. Ziel des algebraischen Reglerentwurfs ist es prinzipiell die Streckenübertragungsfunktion zu kürzen und durch die Wunschübertragungsfunktion als Übertragungsfunktion des geschlossenen Regelkreises zu ersetzen bzw. die Übertragungsfunktion des geschlossenen Regelkreises, die die Streckenübertragungsfunktion beinhaltet, mit dem Regler so zu beeinflussen dass sich das gewünschte Verhalten ergibt.

> 关于控制回路的要求以及如何通过选择传递函数来影响这些要求，可参见《控制工程 I》讲义第 415–462 页（2014 年 6 月版）或第 453–510 页（2019 年 1 月版）。代数控制器设计的目标原则上是约去被控对象传递函数，并用期望传递函数取代它，使其成为闭环控制系统的传递函数；或者利用控制器影响包含被控对象传递函数的闭环传递函数，使系统表现出所期望的行为。

Für die Übertragungsfunktion $G_{cl}(s)$ des geschlossenen Regelkreises soll somit gelten

> 因此，对于闭环控制系统的传递函数 $G_{cl}(s)$，应满足：

$G_{cl}=\frac{KG}{1+KG}=G_M=\frac{B_M}{A_M}.$  (2)

> $G_{cl}=\frac{KG}{1+KG}=G_M=\frac{B_M}{A_M}.$  （2）

Löst man Gleichung (2) nach $K(s)$ auf erhält man

> 将公式（2）对 $K(s)$ 求解，可得：

$K=\frac{B_MA}{(A_M-B_M)B},$  (3)

> $K=\frac{B_MA}{(A_M-B_M)B},$  （3）

Mit der Streckenübertragungsfunktion

> 其中，被控对象传递函数为：

$G=\frac{B}{A}.$

> $G=\frac{B}{A}.$

Mit (3) kann bei bekannter Strecken- und Wunschübertragungsfunktion direkt die Übertragungsfunktion des Reglers bestimmt werden. Damit Gleichung (3) jedoch verwendet werden kann, müssen zwei Bedingungen erfüllt sein.

> 当被控对象传递函数和期望传递函数已知时，可利用公式（3）直接确定控制器的传递函数。然而，要使用公式（3），必须满足两个条件。

Zum einen muss der Regler realisierbar oder besser gesagt Kausal sein. Damit der Regler Kausal ist, muss das Nennerpolynom die gleiche oder eine höhere Ordnung wie das Zählerpolynom aufweisen (ein Pol-Nullstellenüberschuss von mindestens 0). Aus dieser Bedingung folgt die Bedingung für den Pol-Nullstellenüberschuss der Wunschübertragungsfunktion (siehe Skript RTI Seite 518 (bzw. S. 533 Skript 1/2019))

> 第一，控制器必须可实现，更准确地说，必须是因果的。为了使控制器具有因果性，分母多项式的阶数必须等于或高于分子多项式的阶数（极点数减零点数至少为 0）。由此可得到期望传递函数的极点—零点余量条件（见 RTI 讲义第 518 页，或 2019 年 1 月版讲义第 533 页）：

$\deg A_M-\deg B_M\geq\deg A-\deg B.$  (4)

> $\deg A_M-\deg B_M\geq\deg A-\deg B.$  （4）

Die zweite Bedingung ist, dass die Regelstrecke keine instabilen Pol- und Nullstellen aufweist. Diese Bedingung ist in der Theorie nicht unbedingt zwingend notwendig, jedoch führen instabile Nullstellen dazu, dass in der Reglerübertragungsfunktion instabile Polstellen auftauchen. Dies führt dazu, dass der geschlossene Regelkreis theoretisch zwar stabil ist aber intern instabil. Zudem ist es nahezu ausgeschlossen, dass die Übertragungsfunktion der Strecke vollständig bekannt ist. Somit lassen sich die Pol- und Nullstellen auch nicht vollständig wegkürzen und bleiben im geschlossenen Regelkreis enthalten. Um die zweite Bedingung zu umgehen kann eine modifizierte Form des Kompensationsreglers verwendet werden. In diesem Praktikum soll der Kompensationsregler in Form der Gleichung (3) verwendet werden, sofern dies möglich ist.

> 第二个条件是被控对象不能具有不稳定的极点和零点。理论上该条件并非绝对必要，但不稳定零点会使控制器传递函数中出现不稳定极点。这会导致闭环控制系统理论上虽然稳定，但内部不稳定。此外，被控对象的传递函数几乎不可能被完全准确地获知，因此极点和零点也无法被完全约去，而会保留在闭环控制系统中。为了避开第二个条件，可以使用补偿控制器的改进形式。在本实验中，只要可能，应采用公式（3）形式的补偿控制器。

# Hausaufgabe:

> 课前作业：

**A)** Wie werden Lineare zeitinvariante Systeme definiert (welche zwei Prinzipien müssen erfüllt sein)? Geben sie ein Beispiel für ein lineares und ein nichtlineares System an.

> **A)** 如何定义线性时不变系统（必须满足哪两个原理）？请分别给出一个线性系统和一个非线性系统的例子。

**B)** Machen Sie sich Gedanken wie Sie das oben beschriebene System prinzipiell als Modell darstellen können und wie es als Blockschaltbild in Simulink umgesetzt werden kann. Die Spannung an den Glühkerzen soll dabei als Eingangsgröße, T2 als eine messbare Zwischengröße und T3 als Ausgangsgröße betrachtet werden.

> **B)** 思考原则上如何将上述系统表示为模型，以及如何在 Simulink 中将其实现为框图。将电热塞上的电压视为输入量，将 T2 视为可测量的中间量，将 T3 视为输出量。

**C)** Wie lassen sich die Systemparameter bei linearen Systemen aus der Sprungantwort eines Systems bestimmen? Gehen sie davon aus, dass ein PT1 oder PT2 vorliegt. Welche Parameter gibt es für das jeweilige Übertragungsglied und wie kann man diese aus der Sprungantwort bestimmen.

> **C)** 如何根据线性系统的阶跃响应确定系统参数？假设系统为 PT1 或 PT2。各传递环节分别具有哪些参数，如何从阶跃响应中确定这些参数？

**D)** Ihnen liegt ein System vor bei dem kein Überschwingen zulässig ist. Wie können sie dies bei der Auslegung der Regelung gewährleisten (Einfluss bestimmter Parameter)?

> **D)** 已知一个不允许出现超调的系统。在控制系统设计中，如何保证这一点（某些参数的影响）？

**E)** Bestimmen Sie (anhand der beiliegenden Diagramme) eine Übertragungsfunktion, so dass das ausgelegte System PT2 Verhalten aufweist. Die maximale Überschwingweite $M_P$ soll 5 % und die Ausregelzeit $t_{\varepsilon,3\%}$ der Sprungantwort 6 s bzw. 100 s und 300 s betragen. Bestimmen Sie dazu zunächst die erforderliche Eigenfrequenz und die angestrebte Dämpfung des geregelten Systems. Stellen Sie für die drei genannten Systeme die Übertragungsfunktion auf.

> **E)** 根据所附图表确定一个传递函数，使所设计系统具有 PT2 行为。最大超调量 $M_P$ 应为 5%，阶跃响应的调节时间 $t_{\varepsilon,3\%}$ 分别为 6 s、100 s 和 300 s。首先确定所需的固有频率和闭环系统的目标阻尼，然后写出上述三个系统的传递函数。

**F)** Erstellen Sie ein allgemeines Strukturbild für ein einfach geregeltes System mit dem Regler K(s) und der Übertragungsfunktion G(s).

> **F)** 绘制一个简单闭环控制系统的一般结构图，其中控制器为 K(s)，被控对象传递函数为 G(s)。

**G)** Stellen Sie mit Hilfe der Gleichung (3) eine allgemeine Reglergleichung auf. Als zu regelnde Strecke ist ein Verzögerungsglied 1. Ordnung (PT1 – Glied) anzunehmen, welches im ungeregelten Fall stabil ist. Die angestrebte Wunschübertragungsfunktion soll ein PT2 System sein. Das geregelte System soll sprungförmige Störungen ausregeln und stationäre Genauigkeit erreichen (keine bleibende Regelabweichung).

> **G)** 利用公式（3）建立一个通用控制器方程。假设被控对象是一阶惯性环节（PT1 环节），且在未控制状态下稳定。目标期望传递函数应为 PT2 系统。闭环系统应能够消除阶跃扰动，并达到稳态精度（无稳态偏差）。

**H)** Machen Sie sich Gedanken über die Struktur der in G) bestimmten Reglerübertragungsfunktion. Gibt es Ähnlichkeiten mit bekannten Reglerstrukturen oder Übertragungsglieder?

> **H)** 思考 G) 中所确定的控制器传递函数结构。它与已知的控制器结构或传递环节是否存在相似之处？

**I)** Eine Regelung wird im Allgemeinen zum Erreichen und Beibehalten eines vorgegebenen Sollwertes und zur Gewährleistung eines stabilen Systemverhaltens eingesetzt. Welches zusätzliche Ziel kann man mit einer Regelung erreichen?

> **I)** 控制通常用于达到并保持给定设定值，以及确保系统行为稳定。通过控制还可以实现什么附加目标？

# Praktikumsversuch:

> 实验内容：

Speichern Sie für Ihre spätere Ausarbeitung alle benötigten Daten sowie ggf. Abbildungen in einem für Sie lesbaren Format, z.B. png, emf.

> 请将后续撰写实验报告所需的全部数据以及必要时的图像，以您能够读取的格式保存，例如 png、emf。

**a)** Nehmen sie eine Sprungantwort der Temperaturregelstrecke auf (3 V Eingangsspannung, Messdauer 240 s) und charakterisieren Sie das vorliegende System. Mit welchem linearen System kann das Verhalten zwischen dem Eingang und T2 sowie zwischen dem Eingang und T3 angenähert werden? Bestimmen Sie alle nötigen Parameter zur Beschreibung der linearen Systeme.

> **a)** 记录温度控制对象的阶跃响应（输入电压 3 V，测量时长 240 s），并描述该系统的特性。输入与 T2 之间以及输入与 T3 之间的行为可分别用哪种线性系统近似？确定描述这些线性系统所需的全部参数。

**b)** Erstellen Sie ein Simulinkmodell des vorliegenden Systems (Eingangsgröße ist die Spannung, T2 ist eine Zwischengröße, T3 ist die Ausgangsgröße) und vergleichen Sie die Sprungantwort (T2 und T3) mit der aus Aufgebanteil a).

> **b)** 建立该系统的 Simulink 模型（输入量为电压，T2 为中间量，T3 为输出量），并将其阶跃响应（T2 和 T3）与任务 a) 中的结果进行比较。

**c)** Laden Sie die Daten ‘Sprung_3V_Langzeit.mat‘ und lassen Sie sich die Temperaturen T1, T2 und T3 über der Zeit anzeigen. Vergleichen Sie die vorliegenden Messdaten mit denen von Ihnen aufgezeichneten Daten und Diskutieren Sie die Ergebnisse.

> **c)** 加载数据“Sprung_3V_Langzeit.mat”，并显示温度 T1、T2 和 T3 随时间的变化。将现有测量数据与您记录的数据进行比较，并讨论结果。

**d)** Laden Sie die Daten ‘KL_U_T.mat‘ und lassen sie sich den zeitlichen Verlauf der Temperaturen T2 und T3 anzeigen. Erstellen Sie eine Kennlinie die angibt wie sich die eingestellte Eingangsspannung auf die Temperatur T2 auswirkt (Umax = 5 V, eingestellte Schrittweite 0,5 V).

> **d)** 加载数据“KL_U_T.mat”，并显示温度 T2 和 T3 的时间变化过程。绘制一条特性曲线，用于说明设定输入电压对温度 T2 的影响（$U_{max}=5\,\mathrm{V}$，设定步长为 $0.5\,\mathrm{V}$）。

**e)** Laden Sie die Daten sprung_5_V.mat und Stellen Sie die Kennlinien T2 und T3 über der Zeit dar. Beurteilen Sie anhand dieser maximalen Eingangsspannung die kleinste Zeitspanne zum Erreichen einer vorgegebenen Solltemperatur.

> **e)** 加载数据 sprung_5_V.mat，并绘制 T2 和 T3 随时间变化的曲线。根据该最大输入电压，评估达到给定目标温度所需的最短时间。

**f)** Wählen Sie anhand Ihrer Erkenntnisse aus Aufgabenteil e) eine geeignete Wunschübertragungsfunktion aus Aufgabenteil E) der Hausaufgabe und berechnen Sie mit Hilfe von Aufgabenteil G) der Hausaufgabe einen geeigneten Regler.

> **f)** 根据任务 e) 中获得的认识，从课前作业 E) 中选择一个合适的期望传递函数，并借助课前作业 G) 计算一个合适的控制器。

**g)** Führen sie in Simulink eine Simulation des geregelten Systems durch. Verwenden Sie dazu das unter Aufgabenstellung b) erstellte System und den Regler aus Punkt f) der Versuchsdurchführung.

> **g)** 在 Simulink 中对闭环系统进行仿真。使用任务 b) 中建立的系统以及实验步骤 f) 中得到的控制器。

**h)** Binden Sie den in der Simulation getesteten Regler unter Simulink in die dSpace Umgebung ein und testen Sie den Regler am Versuchsstand. Vergleichen Sie die Ergebnisse der Realdaten aus dem Versuch mit Ihren Simulationen. Diskutieren sie ggf. auftretende Abweichungen, betrachten Sie hierzu auch T1.

> **h)** 将在仿真中测试过的控制器通过 Simulink 集成到 dSpace 环境中，并在实验台上测试该控制器。将实验获得的真实数据结果与仿真结果进行比较。讨论可能出现的偏差，并同时考察 T1。

**i)** Würden Sie ein ähnliches Verhalten bezüglich der Regelgüte erwarten wenn sie einen Regler ohne I Anteil verwenden würden. Begründen Sie ihre Antwort.

> **i)** 使用不含 I 环节的控制器时，您是否仍会预期获得相似的控制品质？请说明理由。
