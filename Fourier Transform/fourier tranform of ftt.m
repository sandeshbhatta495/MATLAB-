% 3.Fourier Transform using fft() 
% Parameters 
Fs = 1000;            % Sampling frequency (Hz) 
T = 1/Fs;             % Sampling period 
L = 1000;             % Length of signal 
t = (0:L-1)*T;        % Time vector 
 
% Signal: sine wave at 50 Hz 
f_sin = 50;            
x = sin(2*pi*f_sin*t); 
 
 