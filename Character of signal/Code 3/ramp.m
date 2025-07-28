clc
close all;
i=1;
for t=-2:0.001:2
    if(t>=0)
        x(i)=t;
    else
        x(i)=0;
    end;
    i=i+1;
end;
t=-2:0.001:2;
subplot(2,1,1);
plot(t,x)
xlabel('time')
ylabel('Amp');
title('CT Ramp / Sandesh / ACE080BEI025')
clear all;
i=1;
for t=-2:0.001:2
    if(t>=0)
        x(i)=t;
    else
        x(i)=0;
    end;
    i=i+1;
end;
t=-2:0.001:2;
subplot(2,1,2);
stem(t,x);
xlabel('time')
ylabel('Amp');
title('DT Ramp/Sandesh / ACE080BEI025');