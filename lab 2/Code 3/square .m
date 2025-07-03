clc;
clear all;

% Define time vector
t = -2:0.001:2;

% Generate continuous-time square wave
x = ones(size(t));
x(mod(floor(t / 0.5), 2) ~= 0) = -1;

subplot(2,1,1);
plot(t, x, 'b');
xlabel('Time');
ylabel('Amplitude');
title('CT Square Wave / Sandesh / ACE080BEI025');
grid on;

% Generate discrete-time square wave using the same logic
x = ones(size(t));
x(mod(floor(t / 0.5), 2) ~= 0) = -1;

subplot(2,1,2);
stem(t, x, 'r', 'filled');
xlabel('Time');
ylabel('Amplitude');
title('DT Square Wave / Sandesh / ACE080BEI025');
grid on;
