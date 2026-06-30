clear all;

x = [45.2 50.1 55.2 60.3 65.2 69.9 75.0 80.1 85.0 90.0 95.1 99.9 104.9 110.1 115.0]; % ˚C
y = [1.93 2.11 2.27 2.53 2.73 2.91 3.14 3.34 3.48 3.67 3.87 4.03 4.23 4.50 4.72]; % V
yb = [0.344 0.377 0.422 0.477 0.530 0.573 0.630 0.667 0.702 0.742 0.793 0.828 0.881 0.944 0.996]; % mV

xr = [min(x), max(x)];

[m, b, r] = lin_reg(x, y);
yr = xr * m + b;

[mb, bb, rb] = lin_reg(x, yb);
ybr = xr * mb + bb;

error_y = x * m + b - y;
error_x = (y - b) / m - x;


figure();
hold on;
grid on;
title("U(T)");
scatter(x, y);
plot(xr, yr);
scatter(x, yb);
plot(xr, ybr);
legend("orig verstärkt", "reg verstärkt", "orig nicht verstärkt", "reg nicht verstärkt")
disp(r);
disp(rb);
% exportgraphics(gcf, 'figures/V2_1.pdf', 'ContentType', 'vector');
close;

figure();
hold on;
grid on;
title("error of U(T)");
scatter(x, error_y);
close;

figure();
hold on;
grid on;
title("error of T(U)");
scatter(y, error_x);
close;

disp(m / mb);
