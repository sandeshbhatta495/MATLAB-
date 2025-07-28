%2.% Parameters 
Fs = 1000;              % Sampling frequency (Hz) 
T = 1/Fs;               % Sampling period 
L = 1000;               % Number of samples 
t = (0:L-1)*T;          % Time vector 
% Composite signal: sum of 3 sine waves 
f1 = 50;                % Frequency 1 (Hz) 
f2 = 120;               % Frequency 2 (Hz) 
f3 = 200;               % Frequency 3 (Hz) 
x = 0.7*sin(2*pi*f1*t) + sin(2*pi*f2*t) + 0.5*sin(2*pi*f3*t); 
% FFT 
Y = fft(x); 
P2 = abs(Y/L);           % Two-sided spectrum 
P1 = P2(1:L/2+1);        % One-sided spectrum 
P1(2:end-1) = 2*P1(2:end-1); 
f = Fs*(0:(L/2))/L;      % Frequency vector 
% Plot 
plot(f, P1, 'LineWidth', 2); 
title('FFT of Composite Signal'); 
xlabel('Frequency (Hz)'); 
ylabel('|P1(f)|'); 
grid on;