# HA

## (a)

$$
\begin{cases}
l = 600 mm\\
2R = 10 mm\\
d = 20 mm\\
\varepsilon_{r, Luft} \approx 1 \\
\varepsilon_0 = 8,854\cdot 10^{-12}\frac{As}{Vm}
\end{cases}
\begin{aligned}
C
&=\frac{\pi\varepsilon l}{\text{arcosh}{\frac{d}{2R}}}\\
&=\frac{\pi\varepsilon_0\varepsilon_{r, Luft} l}{\text{arcosh}{\frac{d}{2R}}}\\
&=1.267\cdot 10^{-11}\frac{As}{V}
\end{aligned}
$$

## (b)

$$
\begin{cases}
    l = 600 mm\\
    2R = 10 mm\\
    d = 20 mm\\
    \varepsilon_{r, Wasser} \approx 80 \\
    \varepsilon_0 = 8,854\cdot 10^{-12}\frac{As}{Vm}
\end{cases}
\begin{aligned}
    C
    &=\frac{\pi\varepsilon l}{\text{arcosh}{\frac{d}{2R}}}\\
    &=\frac{\pi\varepsilon_0\varepsilon_{r, Wasser} l}{\text{arcosh}{\frac{d}{2R}}}\\
    &=1.014\cdot 10^{-9}\frac{As}{V}
\end{aligned}
$$

## (c)

$$
f=\frac{1}{2\pi\sqrt{LC}}\\
\begin{cases}
    L = 100\mu H\\
    C_{\max} = 1.014\cdot 10^{-9}\frac{As}{V}\\
    C_{\min} = 1.267\cdot 10^{-11}\frac{As}{V}\\
\end{cases}
\Rightarrow
\begin{cases}
    f_{\max} = 4470805.296 Hz\\
    f_{\min} = 499851.228 Hz\\
\end{cases}
$$

## (d)

$$
\begin{cases}
    \Delta N_x = \plusmn 1\\
    \Delta N_0 = \plusmn 1\\
\end{cases}
$$

## (e)

$$
f_x=f_0\frac{N_x}{N_0}\\
\begin{cases}
    \frac{\partial f_x}{\partial N_x}=f_0\frac{1}{N_0}\\
    \frac{\partial f_x}{\partial N_0}=-f_0\frac{N_x}{N_0^2}\\
\end{cases}
\Rightarrow
\Delta f_x=\frac{f_0}{N_0}(\plusmn 1\plusmn\frac{N_x}{N_0})
$$

## (f)

$$
|\Delta f_x|_{\max}=\frac{f_0}{N_0}(1+\frac{N_x}{N_0})\\
|\Delta f_x|_{\max}\le 2\frac{f_0}{N_0}\le 1Hz\\
\Rightarrow 2\cdot 10^6\le N_0\\
T_{Mess}=\frac{N_0}{f_0}=2s
$$
