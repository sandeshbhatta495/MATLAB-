clc;
clear;
close all;

x = linspace(-5, 5, 1000);   % Increased number of points for smoother curve
y = sinc(x);                 % MATLAB's built-in normalized sinc function

plot(x, y, 'b', 'LineWidth', 2); % Blue line with thicker width
xlabel('Time');
ylabel('Amplitude');
title('Sinc Signal/Safal Sapkota/024');
legend('Discrete-Time Sinc');

grid on;  % Optional: adds a grid to the plot
