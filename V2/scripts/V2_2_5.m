filt_temp = [45.0, 50.0, 55.0, 59.9, 65.0, 70.0, 75.1, 79.9, 84.9, 90.0, 95.0, 100.0, 105.0, 110.0, 115.0]; % ˚C
filt_voltage = [1.48, 1.57, 1.69, 1.81, 1.94, 2.05, 2.17, 2.30, 2.46, 2.55, 2.65, 2.78, 2.96, 3.11, 3.33]; % V

filt_temp_domain = [min(filt_temp), max(filt_temp)];
[filt_m, filt_b, filt_r] = lin_reg(filt_temp, filt_voltage);
filt_voltage_range = filt_temp_domain * filt_m + filt_b;

error_filt_temp = filt_temp * filt_m + filt_b - filt_voltage;
error_filt_voltage = (filt_voltage - filt_b) / filt_m - filt_temp;

figure;
hold on;
grid on;
title("U(T)");
scatter(temp, voltage);
plot(temp_domain, reg_voltage_range);
scatter(filt_temp, filt_voltage);
plot(filt_temp_domain, filt_voltage_range);
legend("orig verstärkt", "reg verstärkt", "orig mit störung", "reg mit störung")
disp(filt_r);
disp(unamp_r);
exportgraphics(gcf, 'figures/V2_2_char_curve.pdf', 'ContentType', 'vector');
close;

figure;
hold on;
grid on;
title("error of U(T) with noise");
scatter(filt_temp, error_filt_temp);
exportgraphics(gcf, 'figures/V2_2_voltage_error.pdf', 'ContentType', 'vector');
close;

figure;
hold on;
grid on;
title("error of T(U) with noise");
scatter(filt_voltage, error_filt_voltage);
exportgraphics(gcf, 'figures/V2_2_temp_error.pdf', 'ContentType', 'vector');
close;