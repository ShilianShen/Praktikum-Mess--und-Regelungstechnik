clc
close all;
clear all;


%%
o=ini_MSO4034_1(); % Initialisierung der Hardware

%
disp('Paused, Press any key to continue!');
disp('Einstellungen an Osziloskop anpassen!')
pause;              % Pasued: press any key
disp('measurement started');
%%

config1 = DPO4032_GetConfig_1(o,1); % Auslesen der Konfigurationseinstellungen

ch1 = DPO4032_GetData_1(o,1,1,config1); % Auslesen der Spannungswerte

function y = schmitt_trigger(x, obere_schwelle, untere_schwelle)
    y = zeros(size(x));
    zustand = 0;
    for i = 1:length(x)
        if zustand == 0 && x(i) > obere_schwelle
            zustand = 1;
        elseif zustand == 1 && x(i) < untere_schwelle
            zustand = 0;
        end
        y(i) = zustand;
    end
end
y = schmitt_trigger(ch1.y,4,1);
plot(ch1.x,ch1.y);
hold on;
plot(ch1.x,y);

function n = count_pulse(x,threshold)
    n = 0;
    zustand = 0;
    for i = 1:length(x)
        if zustand == 0 && x(i) > threshold
            n = n + 1;
            zustand = 1;
        elseif zustand == 1 && x(i) < threshold
            zustand = 0;
        end
    end
end
N_x = count_pulse(y,0.5);
disp(N_x);
T_mess = (length(ch1.x) - 1) * (ch1.x(3) - ch1.x(2));
f_x = N_x / T_mess;

%%
fclose(instrfind);
delete(instrfind)
 
