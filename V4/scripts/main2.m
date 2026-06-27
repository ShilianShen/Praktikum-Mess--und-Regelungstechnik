y = schmitt_trigger(ch1.y,4,1);
plot(ch1.x,ch1.y);
hold on;
plot(ch1.x,y);

N_x = count_pulse(y,0.5);
disp(N_x);
T_mess = (length(ch1.x) - 1) * (ch1.x(3) - ch1.x(2));
f_x = N_x / T_mess;