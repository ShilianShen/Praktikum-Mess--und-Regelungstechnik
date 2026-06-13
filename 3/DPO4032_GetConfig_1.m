function c = DPO4032_GetConfig_1(obj,channel)

fprintf(obj, '*wai');
fprintf(obj, ':DATa:SOURce CH%d',channel);     % waveform dara source channel 1
fprintf(obj, ':DATa:ENCdg SRI');            % set transfer format
fprintf(obj, ':WFMOutpre:BYT_Nr 1');
fprintf(obj, ':DATa:STARt 1');
% fprintf(obj, ':1:100');

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
