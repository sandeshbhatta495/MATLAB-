 %Fourier Series of a Triangular Wave 
clc; clear; close all 
 
t = linspace(-pi, pi, 1000); 
f = zeros(size(t)); 
N = 10; 
for n = 1:2:(2*N-1) 
    f = f + ((8 / (pi^2)) * ((-1)^((n-1)/2) / n^2)) * cos(n * t); 
end 
plot(t, f, 'm', 'LineWidth', 2); 
grid on; 
xlabel('Time t'); ylabel('f(t)'); 
title(['Fourier Series of Triangular Wave with N = ', num2str(N)]); 