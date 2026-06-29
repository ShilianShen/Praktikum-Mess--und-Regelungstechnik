y = schmitt_trigger(ch1.y,4,1);

figure;
hold on;
plot(ch1.x,ch1.y);
plot(ch1.x,y);
grid on;
exportgraphics(gcf, 'figures/V67.pdf', 'ContentType', 'vector');
close;

N_x = count_pulse(y,0.5);
disp(N_x); % 4
T_mess = (length(ch1.x) - 1) * (ch1.x(3) - ch1.x(2));
f_x = N_x / T_mess;
disp(f_x); % 1.0020e+06