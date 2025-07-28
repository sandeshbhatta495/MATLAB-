clc
close all;
clear all;
f=1;
t=0:0.01:5;
T=0:0.1:5;
subplot(2,1,1);
yecd =5*exp(-t);
plot(t,yecd);
xlabel('time');
ylabel('Amp');

title('CT exponential / Sandesh/ACE080BEI025') ;
set(gca,'XAxislocation','origin');
set(gca,'YAxislocation','origin');
grid on;

subplot(2,1,2);
yedd =5*exp(-T);
stem(T,yedd);
xlabel('Time')
ylabel('Amp');

title('DT expoonential/Sandesh/ACE080BEI025');
set(gca,'XAxislocation','origin');
set(gca,'YAxislocation','origin');
grid on;