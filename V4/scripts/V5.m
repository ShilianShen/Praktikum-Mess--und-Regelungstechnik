x = sin(linspace(0, 30, 1000));
y = schmitt_trigger(x, 0.6, -0.6);

figure;
hold on;
plot(x);
plot(y);
grid on;
exportgraphics(gcf, 'figures/V5.pdf', 'ContentType', 'vector');
close;