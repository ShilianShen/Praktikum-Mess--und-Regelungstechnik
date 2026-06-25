
load('matlabout.mat')

figure
plot(out.V11.time(:,1),  out.V11.signals.values(:,1));
hold on
plot(out.V11.time(:,1),  out.V11.signals.values(:,2));

figure
plot(out.V11.time(:,1),  out.V11.signals.values(:,1));
hold on
plot(out.V11.time(:,1),  out.V11.signals.values(:,3));
