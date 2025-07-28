% 2. Fourier Series of a Sawtooth Wave 
% Mathematical Form: 
% f(t) = 2 * [(-1)^(n+1)/n] * sin(n*t), summed over n from 1 to ∞. 
% This is an odd function, and hence only sine terms appear. 
% MATLAB Code: 
 
clc; clear; close all 
 
t = linspace(-pi, pi, 1000); 
f = zeros(size(t)); 
N = 10; 
 
for n = 1:N 
    f = f + ((-1)^(n+1) * 2 / n) * sin(n * t); 
end 
 
plot(t, f, 'b', 'LineWidth', 2); 
grid on; 
xlabel('Time t'); ylabel('f(t)'); 
title(['Fourier Series of Sawtooth Wave with N = ', num2str(N)]); 
 
 
