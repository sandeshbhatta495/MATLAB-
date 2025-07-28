% Fourier Series of a Square Wave:: 
clc; clear; close all; 
t = linspace(-pi, pi, 1000); 
f = zeros(size(t)); 
N = 10; 
for n = 1:2:(2*N-1) 
    f = f + (4/(n*pi)) * sin(n*t); 
end 
plot(t, f, 'r', 'LineWidth', 2); 
grid on; 
xlabel('Time t'); ylabel('f(t)'); 
title(['Fourier Series of Square Wave with N = ', num2str(N)]); 