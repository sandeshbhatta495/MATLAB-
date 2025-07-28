clc
close all;
i=1;
for t=-2:0.001:2
    if(t>-1&& t<1)
        x(i)=1;
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
title('CT question/Sandesh/ACE080BEI025');
clear all;
i=1;
for t=-2:0.001:2
    if(t>-1 &&t<1 )
        x(i)=1;
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
title('DT question/Sandesh/ACE080BEI025');
