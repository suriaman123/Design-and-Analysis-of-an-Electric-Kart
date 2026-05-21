
%initial data in kartdata.m
%simout is output data containging seven signals 

load simout1; %simout1 was generated previously for initial parameters at 0.1m radius and 200kg weight

%Kartplot

figure(1)
plot(simout.signals.values(:,3),simout.signals.values(:,2), simout1.signals.values(:,3),simout1.signals.values(:,2),'g', xt,vt,'r')
xlabel('distance m'),ylabel('target speedm/s')

figure(2)
%plot(tout, simout.signals.values(:,1), tout1,simout1.signals.values(:,1))
%title('Acceleration'),xlabel('time s'),ylabel('accn m/s^2')
plot(simout.signals.values(:,3), simout.signals.values(:,1), simout1.signals.values(:,3),simout1.signals.values(:,1), 'g')
title('Acceleration'),xlabel('distance m'),ylabel('accn m/s^2')


figure(3)
plot(tout, simout.signals.values(:,2), tout1, simout1.signals.values(:,2), 'g')
title('Velocity'),xlabel('time s'),ylabel('actual speed m/s')

figure(4)
plot(tout, simout.signals.values(:,3), tout1, simout1.signals.values(:,3), 'g')
title('Distance'),xlabel('time s'),ylabel('distance m')

figure(5)
plot(tout, simout.signals.values(:,4), tout1, simout1.signals.values(:,4), 'g')
title('Current'),xlabel('time s'),ylabel('current amps')

figure(6)
plot(tout, simout.signals.values(:,5), tout1, simout1.signals.values(:,5), 'g')
title('Voltage'),xlabel('time s'),ylabel('volts')

figure(7)
plot(tout, simout.signals.values(:,6), tout1, simout1.signals.values(:,6), 'g')
title('Power'),xlabel('time s'),ylabel('watts')

figure(8)
plot(tout, simout.signals.values(:,7), tout1, simout1.signals.values(:,7), 'g')
title('Energy used --- SOC'),xlabel('time s'),ylabel('Joules')

