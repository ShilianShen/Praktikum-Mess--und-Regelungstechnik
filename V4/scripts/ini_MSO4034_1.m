function [o]=ini_MSO4034()

%% Intro for Tektronix Oszilloscope MSO 4034

%% Intro for Tektronix Oszilloscope MSO 4034

%o=visa('tek', ['TCPIP::' ip '::INSTR']);
%o=visa('tek', 'USB0::1689::1025::C001892::0::INSTR');
o=visa('tek', 'USB::0x0699::0x0401::C001892::INSTR'); 
set(o, 'InputBufferSize', 4e6);
fopen(o);
	

% ALLGEMEINE INITIALISATION
fprintf(o,'*RST');                          % reset scope - initialize to known state
fprintf(o,'*CLS');                          % clear status registers and output queue
fprintf(o,'HEADer OFF');                    % turn off system headers
fprintf(o, ':AUTOSEt EXECUTE');             % performe autoscale
fprintf(o,'SELect:CH1 ON');
fprintf(o,'SELect:CH2 OFF');
fprintf(o,'SELect:CH3 OFF');
fprintf(o,'SELect:CH4 OFF');

% VERTIKALE EINSTELLUNG CH1
fprintf(o,'CH1:VOLts 5');                  % 8V full-scale (1V/div)
fprintf(o,'CH1:OFFSet 0');                 % offset 0mV
fprintf(o,'CH1:COUPling DC');              % Coupling

% VERTIKALE EINSTELLUNG CH2
% fprintf(o,'CH2:VOLts 5');                  % 8V full-scale (1V/div)
% fprintf(o,'CH2:OFFSet 0');                 % offset 0mV
% fprintf(o,'CH2:COUPling DC');              % Coupling

% % TRIGGER EINSTELLEN
% fprintf(o,'TRIGger:A:EDGe:SOUrce AUX');    % source
% fprintf(o,'TRIGger:A:LEVel 1.7');          % level 2V
% fprintf(o,'TRIGger:A:MODe NORMAL');        % don't force sweep
% fprintf(o,'TRIGger:A:EDGe:SLOpe RISE');    % trigger on falling slope

% HORIZONTALE EINSTELLUNG
fprintf(o,'HORizontal:MAIn:SCAle 20e-9');    % ms of full-scale (1ms/div)
fprintf(o,'HORizontal:DELay:STATE OFF');    % no delay
fprintf(o,'HORizontal:TRIGger:POSition 0'); % Reference Left

% fprintf(o,'acquire:mode:average');  %Einstelen der Mittelung
% fprintf(o,'acquire:numavg 16');     %Anzahl der gemittelten Messungen
 fprintf(o,'HORizontal:RECOrdlength 1000'); %Einstellen der Samples pro Fenster

disp('Communication with Scope opened');
end
