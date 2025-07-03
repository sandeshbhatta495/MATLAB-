clc;
clear all;

% Time vector
t = -2:0.001:2;

% ----------------------------
% Continuous-Time Unit Step
% ----------------------------
x = zeros(size(t));
x(t >= 0) = 1;

subplot(2,1,1);
plot(t, x, 'b');
xlabel('Time');
ylabel('Amplitude');
title('CT Unit Step / Sandesh / ACE080BEI025');
grid on;

% ----------------------------
% Discrete-Time Unit Step
% ----------------------------
x = zeros(size(t));
x(t >= 0) = 1;

subplot(2,1,2);
stem(t, x, 'r', 'filled');
xlabel('Time');
ylabel('Amplitude');
title('DT Unit Step / Sandesh / ACE080BEI025');
grid on;
