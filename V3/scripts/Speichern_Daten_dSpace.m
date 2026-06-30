% Dateinamen eingeben ohne .mat
name = 'exp_003'

% Abspecihern unter anderen Werten
load(append(name,'.mat'));
t_mess = exp_003.X(1).Data;
air_mess = exp_003.Y(1).Data;
T1_mess = exp_003.Y(2).Data;
T2_mess = exp_003.Y(3).Data;
T3_mess= exp_003.Y(4).Data;
pwm_Spannung_mess = exp_003.Y(5).Data;
enable_mess = exp_003.Y(6).Data;
