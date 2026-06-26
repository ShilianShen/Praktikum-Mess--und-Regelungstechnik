sys1 = tf(1, [1/3, 2/3/sqrt(3), 1]);
sys2 = tf(1, [1/3, 4/3/sqrt(3), 1]);
sys3 = tf(1, [1/3,   2/sqrt(3), 1]);
sys4 = tf(1, [1/3,18/6/sqrt(3), 1]);

figure;
step(sys1, sys2, sys3, sys4);
legend("1", "2", "3", "4");
grid on;
exportgraphics(gcf, 'figures/V2_1.pdf', 'ContentType', 'vector');
close;

figure;
bode(sys1, sys2, sys3, sys4);
legend("1", "2", "3", "4");
grid on;
exportgraphics(gcf, 'figures/V4_1.pdf', 'ContentType', 'vector');
close;

figure;
pzmap(sys1, sys2, sys3, sys4);
legend("1", "2", "3", "4");
grid on;
exportgraphics(gcf, 'figures/V5_1.pdf', 'ContentType', 'vector');
close;
