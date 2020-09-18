clear all
close all
clc
t=linspace(0,2*pi,100);
T=linspace(0,8*pi,100);
x=sin(t);
% plot(t,x)
y=fft(x);
w=conj(y);
% plot(abs(y))
z=ifft(y);
% plot(t,z);
s=zeros(1,100);
for a=1:100;
    k=((real(y(a)))*cos(a*t)+(imag(y(a)))*sin(a*t))/50;
    m=(abs(y(a)))*cos(a*t+angle(w(a)));
    s=s+m;
end
plot(s);