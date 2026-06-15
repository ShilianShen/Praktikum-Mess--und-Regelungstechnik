function s = DPO4032_GetData_1(obj,channel,convert,config)
%
% get wavform from channel c
% gpib-object obj
% convert to time/voltage [0,1]

fprintf(obj, '*wai');

% transfer data 8bit
fprintf(obj, ':DATa:SOURce CH%d',channel);     % waveform dara source channel 1


fprintf(obj, ':DATa:ENCdg SRI');            % set transfer format
fprintf(obj, ':WFMOutpre:BYT_Nr 1');
fprintf(obj, ':DATa:STARt 2');                  % request waveform data

fprintf(obj, ':hor:reco?')         % request values to allow interpretation of raw data
hrecord_str = fscanf(obj);
hrecord = str2double(hrecord_str);
%hrecord=2e6;
fprintf(obj, ':DATa:STOP %d',hrecord);                  % request waveform data
fprintf(obj, '*wai');
fprintf(obj, ':curve?');                  % request waveform data

first_char = '';
while (strcmp(first_char,'#') ~= 1)
    first_char = char(fread(obj,1,'char'));        % find the # character
end

header_length_str = char(fread(obj,1,'char'));    % get input byte counter
header_length = str2num(header_length_str(1));

header_str = char(fread(obj,header_length,'char'))';     % read number of points
acquired_length = str2num(header_str);
data = fread(obj,acquired_length,'int8');      % input waveform data
term = fread(obj,1,'char');


if (convert == 1)

    if nargin >= 4
        c = config;
    else


        fprintf(obj, ':WFMOutpre:XINcr?')         % request values to allow interpretation of raw data
        xinc_str = fscanf(obj);
        c.xinc = str2double(xinc_str);
        fprintf(obj, ':WFMOutpre:XZEro?')
        xorg_str = fscanf(obj);
        c.xorg = str2double(xorg_str);
        fprintf(obj, ':WFMOutpre:YMUlt?')
        yinc_str = fscanf(obj);
        c.yinc = str2double(yinc_str);
        fprintf(obj, ':WFMOutpre:YOFf?')
        yref_str = fscanf(obj);
        c.yref = str2double(yref_str);
        fprintf(obj, ':WFMOutpre:YZEro?')
        yorg_str = fscanf(obj);
        c.yorg = str2double(yorg_str);
    end

    % convert data to time/voltage
    i = 1:acquired_length;
    s.length = acquired_length;
    s.x = (i .* c.xinc) + c.xorg;
    s.y = ((data-c.yref) .* c.yinc) + c.yorg;
else
    i = 1:acquired_length;
    s.length = acquired_length;
    s.x = i;
    s.y = data;
end

