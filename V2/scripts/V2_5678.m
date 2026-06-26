clear all;

function [m, b, r] = lin_reg(x, y)
    x_mean = mean(x);
    y_mean = mean(y);

    m = sum((x-x_mean).*(y-y_mean))/sum((x-x_mean).^2);
    b = y_mean-m*x_mean;
    r = sum((x-x_mean).*(y-y_mean))/sqrt(sum((x-x_mean).^2))/sqrt(sum((y-y_mean).^2));
end

x = [45.2 50.1 55.2 60.3 65.2 69.9 75.0 80.1 85.0 90.0 95.1 99.9 104.9 110.1 115.0];
y = [1.93 2.11 2.27 2.53 2.73 2.91 3.14 3.34 3.48 3.67 3.87 4.03 4.23 4.50 4.72];
yb = [0.344 0.377 0.422 0.477 0.530 0.573 0.630 0.667 0.702 0.742 0.793 0.828 0.881 0.944 0.996];

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

figure();
hold on;
grid on;
title("error of U(T)");
scatter(x, error_y);

figure();
hold on;
grid on;
title("error of T(U)");
scatter(y, error_x);

disp(m / mb);
