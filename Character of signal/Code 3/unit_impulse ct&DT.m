clc;
clear;
close all;


dt = 0.001;
t_ct = -2:dt:2;
x_ct = zeros(size(t_ct));

% Approximate delta at t = 0 using index (floating point comparison is unreliable)
[~, idx_ct] = min(abs(t_ct));  % find index closest to t = 0
x_ct(idx_ct) = 1;

subplot(2, 1, 1)
plot(t_ct, x_ct, 'b')
xlabel('Time (s)')
ylabel('Amplitude')
title('CT Unit Impulse (approx.) / Sandesh / ACE080BEI025')
grid on;

% ----------------------------
% Discrete-Time Unit Impulse
% ----------------------------
t_dt = -2:1:2;  % Integer steps
x_dt = zeros(size(t_dt));

% True unit impulse at n=0
[~, idx_dt] = min(abs(t_dt));  % find index closest to n = 0
x_dt(idx_dt) = 1;

subplot(2, 1, 2)
stem(t_dt, x_dt, 'r', 'filled')
xlabel('n (samples)')
ylabel('Amplitude')
title('DT Unit Impulse / Sandesh / ACE080BEI025')
grid on;
