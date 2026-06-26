sys1 = tf(1, [1/3, 2/3/sqrt(3), 1]);
sys2 = tf(1, [1/4, 2/3/sqrt(4), 1]);
sys3 = tf(1, [1/6, 2/3/sqrt(6), 1]);

figure;
step(sys1, sys2, sys3);
legend("1", "2", "3");
grid on;
print(gcf, 'figures/V2_2.png', '-dpng', '-r300');
close;

figure;
bode(sys1, sys2, sys3);
legend("1", "2", "3");
grid on;
print(gcf, 'figures/V4_2.png', '-dpng', '-r300');
close;

figure;
pzmap(sys1, sys2, sys3);
legend("1", "2", "3");
grid on;
print(gcf, 'figures/V5_2.png', '-dpng', '-r300');
close;