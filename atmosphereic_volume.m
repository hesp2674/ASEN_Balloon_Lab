close; clear all; clc;

%finalAltitude = 84852;
finalAltitude = 30000;

data = zeros(finalAltitude+1,2);

T = 0;
a = 0;
P = 0;
rho = 0;

rho0 = 1.204;


V0 = 0.01287;

m = rho0 * V0;

[T,a,P,rho] = atmoscoesa(0:finalAltitude);



V = m./rho;



plot(0:finalAltitude, V, 'LineWidth', 3)
title('Altitude vs. Volume')
ylabel('Volume (m^3)')
xlabel('Altitude (m)')

savefig('volume.fig')




