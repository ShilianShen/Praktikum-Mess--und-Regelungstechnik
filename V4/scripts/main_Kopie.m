% clc
% close all;
% clear all;

% 
% %%
% o=ini_MSO4034_1(); % Initialisierung der Hardware
% 
% %
% disp('Paused, Press any key to continue!');
% disp('Einstellungen an Osziloskop anpassen!')
% pause;              % Pasued: press any key
% disp('measurement started');
% %%
% 
% config1 = DPO4032_GetConfig_1(o,1); % Auslesen der Konfigurationseinstellungen

%% Write the code to load data from directory.
function y = schmitt_trigger(x,obere_schwelle,untere_schwelle)
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
%%ch1 = DPO4032_GetData_1(o,1,1,config1); % Auslesen der Spannungswerte

y = schmitt_trigger(ch1.y,4,1);
plot(ch1.x,y,'r','LineWidth',1.5);
grid on;
hold on;
plot(ch1.x,ch1.y); % Ausgabe im Diagramm
hold off;
y_bin=y(:)>0.5;
t_vec = ch1.x(:);

dy = diff([0;y_bin]);
pulse_indices=find(dy==1);

N_pulses = length(pulse_indices)-0;

Ts = ch1.x(2)-ch1.x(1);
fs=1/Ts;
N_sample=length(ch1.x);
T=N_sample * Ts;
fx= N_pulses/T;


%%
% fclose(instrfind);
% delete(instrfind);
