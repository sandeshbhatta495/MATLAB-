clc;
close all;
clear all;

% Define parameters
a = 5;
f = 3;
w = 2 * pi * f;

% Time vector (note: 0.001 step, not 001)
t = 0:0.001:1;

% Generate sine wave
x = a * sin(w * t);  % 'sint' was incorrect, should be 'sin'

% Plot the sine wave
subplot(3, 1, 1)
plot(t, x, 'b');  % Use 'b' instead of "Blue"
xlabel('Time (s)')
ylabel('Amplitude')
title('CT Sine / Sandesh / ACE080BEI025')

% Generate and plot noise
y = rand(1, length(t));  % 'lemgth' was incorrect
subplot(3, 1, 2)  % Changed subplot index from (3,1,1) to (3,1,2)
plot(t, y, 'k');  % Use 'k' for black color
xlabel('Time (s)')
ylabel('Amplitude')
title('Noise / Sandesh / ACE080BEI025')

% Add noise to sine and plot the result
z = x + y;
subplot(3, 1, 3)
plot(t, z, 'r');  % Changed from x to z
xlabel('Time (s)')
ylabel('Amplitude')
title('Noise + Sine / Sandesh / ACE080BEI025')
