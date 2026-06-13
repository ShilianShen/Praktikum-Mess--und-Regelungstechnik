# V1

## a

* $P:    G(s) = K_R$
* $I:    G(s) = \frac1{sT_1}$
* $PT_1: G(s) = \frac{K_R}{1+sT}$
* $PT_2: G(s) = \frac{K_R}{1+2DTs+T^2s^2}$

## b

* $P   : y(t) = K_R\sigma(t)$
* $I   : y(t) = \frac{t}{T_1}\sigma(t)$
* $PT_1: y(t) = K_R(1-e^{-t/T})\sigma(t)$
* $PT_2: y(t) = K_R(1-\frac{T_1}{T_1-T_2}e^{-t/T_1}+\frac{T_2}{T_1-T_2}e^{-t/T_2})\sigma(t)$

## c

$$
\begin{aligned}
    u(t)
    &= A\sin(\omega t)\\
    &= \frac{A}{2j}(e^{j\omega t}-e^{-j\omega t})
\end{aligned}\\
\begin{aligned}
    y(t)
    &=\frac{A}{2j}(G(j\omega)e^{j\omega t}-G(-j\omega)e^{-j\omega t})\\
    &=A\cdot Im(G(j\omega)e^{j\omega t})
\end{aligned}
$$

* $P   : y(t) = K_R\cdot A\sin(\omega t)$
* $I   : y(t) = \frac1{sT_1}\cdot A\sin(\omega t-\pi/2)$
* $PT_1: y(t) = K_R\cdot \frac{A}{\sqrt{1+\omega^2T^2}}\sin(\omega t-\arctan(\omega T))$
* $PT_2: y(t) = K_R\cdot \frac{A}{\sqrt{1+\omega^2T_1^2}\cdot\sqrt{1+\omega^2T_2^2}}\sin(\omega t-\arctan(\omega T_1)-\arctan(\omega T_2))$

## d

P- & I-Glied

* parallel: $y(t)=(K_R+\frac{t}{T_1})\sigma(t)$
* reihen:   $y(t)=K_R\frac{t}{T_1}\sigma(t)$

PT_1 & I-Glied

* parallel: $y(t)=(\frac{t}{T_1}+K_R(1-e^{-t/T}))\sigma(t)$
* reihen:   $y(t)=K_R\frac{T}{T_1}(e^{-t/T}-1+t/T)\sigma(t)$

## e

## f

## g

## h

## i
