clc;
close all;
clear all;
a=5;
f=3;
w=2*pi*f;
t=0:001:1;
x=a*sint(w*t);
subplot(3,1,1)
plot(t,x,"Blue");
xlabel('time')
ylabel('amp');
title('CT sine/Sandesh/ACE080BEI025');

y=rand(1,lemgth(t));
subplot(3,1,1)
plot(t,y,"Black");
xlabel('time')
ylabel('amp');
title('noise/Sandesh/ACE080BEI025');

z=x+y;
subplot(3,1,3)
plot(t,x,"Red");
xlabel('time')
ylabel('amp');
title(' Noise + sine/Sandesh/ACE080BEI025');
