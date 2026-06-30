figure;
hold on;
grid on;
plot(T1_mess);
plot(T2_mess);
plot(T3_mess);
legend('T1', 'T2', 'T3');
close;

figure;
omega_n = 0.055;
T_s = 100;
D = 0.69;
K = 16.33;
sys = tf([omega_n^2*T_s omega_n^2], [K K*2*D*omega_n 0]);
y = step(sys) * 3;
plot(y);

g1 = tf(16.33, [24 1]);
g_cl = tf(0.00308, [1 0.0766 0.00308]);

K = (g_cl / (g1 - g_cl * g1));
k = minreal(K)
