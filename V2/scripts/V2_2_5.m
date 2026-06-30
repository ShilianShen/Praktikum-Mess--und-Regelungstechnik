xn = [45.0, 50.0, 55.0, 59.9, 65.0, 70.0, 75.1, 79.9, 84.9, 90.0, 95.0, 100.0, 105.0, 110.0, 115.0];
yn = [1.48, 1.57, 1.69, 1.81, 1.94, 2.05, 2.17, 2.30, 2.46, 2.55, 2.65, 2.78, 2.96, 3.11, 3.33];

xnr = [min(xn), max(xn)];
[mn, bn, rn] = lin_reg(xn, yn);
ynr = xnr * mn + bn;

error_yn = xn * mn + bn - yn;
error_xn = (yn - bn) / mn - xn;

figure();
hold on;
grid on;
title("U(T)");
scatter(x, y);
plot(xr, yr);
scatter(xn, yn);
plot(xnr, ynr);
legend("orig verstärkt", "reg verstärkt", "orig mit störung", "reg mit störung")
disp(r);
disp(rb);

figure();
hold on;
grid on;
title("error of U(T) with noise");
scatter(xn, error_yn);

figure();
hold on;
grid on;
title("error of T(U) with noise");
scatter(yn, error_xn);