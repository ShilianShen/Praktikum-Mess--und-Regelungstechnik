V1_step = load("V1_step.mat").out.scope;
V1_sin = load("V1_sin.mat").out.scope;

figure(1);
plot(V1_step.time, V1_step.signals.values, 'LineWidth',1.5);
label("Zeit (s)", [0 5], "Amplitude", [-1 5]);
legend("Eingangssignal", "P", "I", "PT1", "PT2");
configure('V1/figures/V1_step.pdf');

figure(2);
plot(V1_sin.time, V1_sin.signals.values, 'LineWidth',1.5);
label("Zeit (s)", [0 5], "Amplitude", [-3 3]);
legend("Eingangssignal", "P", "I", "PT1", "PT2");
configure('V1/figures/V1_sin.pdf');
