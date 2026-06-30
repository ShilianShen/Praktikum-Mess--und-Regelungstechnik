clear all;

temp = [45.2 50.1 55.2 60.3 65.2 69.9 75.0 80.1 85.0 90.0 95.1 99.9 104.9 110.1 115.0]; % ˚C
voltage = [1.93 2.11 2.27 2.53 2.73 2.91 3.14 3.34 3.48 3.67 3.87 4.03 4.23 4.50 4.72]; % V
unamp_voltage = [0.344 0.377 0.422 0.477 0.530 0.573 0.630 0.667 0.702 0.742 0.793 0.828 0.881 0.944 0.996]; % V

temp_domain = [min(temp), max(temp)];

[m, b, r] = lin_reg(temp, voltage);
reg_voltage_range = temp_domain * m + b;

[unamp_m, unamp_b, unamp_r] = lin_reg(temp, unamp_voltage);
reg_unamp_voltage_range = temp_domain * unamp_m + unamp_b;

voltage_error = temp * m + b - voltage;
temp_error = (voltage - b) / m - temp;

figure;
hold on;
grid on;
title("U(T)");
scatter(temp, voltage);
plot(temp_domain, reg_voltage_range);
scatter(temp, unamp_voltage);
plot(temp_domain, reg_unamp_voltage_range);
legend("orig verstärkt", "reg verstärkt", "orig nicht verstärkt", "reg nicht verstärkt")
disp(r);
disp(unamp_r);
exportgraphics(gcf, 'figures/V2_1_char_curve.pdf', 'ContentType', 'vector');
close;

figure;
hold on;
grid on;
title("error of U(T)");
scatter(temp, voltage_error);
exportgraphics(gcf, 'figures/V2_1_voltage_error.pdf', 'ContentType', 'vector');
close;

figure;
hold on;
grid on;
title("error of T(U)");
scatter(voltage, temp_error);
exportgraphics(gcf, 'figures/V2_1_temp_error.pdf', 'ContentType', 'vector');
close;

disp(m / unamp_m);
