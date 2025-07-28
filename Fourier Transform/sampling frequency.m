%4. MATLAB script to plot the above expansion: 
x = 0:1/1000:2*pi;           %discretize interval  
f = exp(x).*sin(2*x);        %declare function  
f_exp=0;                     %initialize expansion  
N = 6;                       %number of harmonics  
for n=1:N                    %iterate partial sum   
An = (exp(2*pi)-1)/(2*pi)*(4*n^2-20)/(n^4-6*n^2+25);   
Bn = (exp(2*pi)-1)/(2*pi)*(8*n)/(n^4-6*n^2+25);  
f_exp = f_exp + An*cos(n*x) + Bn*sin(n*x);  
end  
A0 = (1-exp(2*pi))/(5*pi);    
f_exp = f_exp+A0;            %add A0 term  
plot(x,f,x,f_exp)            %plot function and expansion  
title('Fourier Expansion e^xsin(2x) on [0,2\pi]');   
xlabel('x'); ylabel('f(x)');   
legend('e^xsin(2x)','Fourier Expansion')  
 
  
