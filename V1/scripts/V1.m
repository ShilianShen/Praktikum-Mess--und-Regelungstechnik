V1_step = load("V1_step.mat").out.scope;
V1_sin = load("V1_sin.mat").out.scope;

figure;
plot(V1_step.time, V1_step.signals.values);
grid on;
exportgraphics(gcf, 'figures/V1_step.pdf', 'ContentType', 'vector');
close;

figure;
plot(V1_sin.time, V1_sin.signals.values);
grid on;
exportgraphics(gcf, 'figures/V1_sin.pdf', 'ContentType', 'vector');
close;
