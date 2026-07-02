sys1 = tf(1, [1/3, 2/3/sqrt(3), 1]);
sys2 = tf(1, [1/4, 2/3/sqrt(4), 1]);
sys3 = tf(1, [1/6, 2/3/sqrt(6), 1]);

figure(1);
step(sys1, sys2, sys3);
legend("1", "2", "3");
grid on;
exportgraphics(gcf, 'figures/V2_2.pdf', 'ContentType', 'vector');

figure(2);
bode(sys1, sys2, sys3);
legend("1", "2", "3");
grid on;
exportgraphics(gcf, 'figures/V4_2.pdf', 'ContentType', 'vector');

figure(3);
pzmap(sys1, sys2, sys3);
legend("1", "2", "3");
grid on;
exportgraphics(gcf, 'figures/V5_2.pdf', 'ContentType', 'vector');
