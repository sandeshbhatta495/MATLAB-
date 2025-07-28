
% Fourier Transform using fft() 
Y = fft(x);           % Apply FFT 
P2 = abs(Y/L);        % Two-sided spectrum 
P1 = P2(1:L/2+1);     % One-sided spectrum 
P1(2:end-1) = 2*P1(2:end-1);  % Adjust amplitudes 
 
% Frequency vector 
f = Fs*(0:(L/2))/L; 
 
% Plot the amplitude spectrum 
plot(f, P1, 'LineWidth', 2); 
title('Fourier Transform using fft()'); 
xlabel('Frequency (Hz)'); 
ylabel('|Amplitude|'); 
grid on; 
 
%4 
syms t w 
f = exp(-t^2);  % Gaussian function 
 
% Compute Fourier Transform 
F = fourier(f, t, w); 
 
disp('Fourier Transform F(w):') 
pretty(F) 
 
 

 
 
 