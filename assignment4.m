
%%assignment4
clear all
close all
clc

x=[ 1 2 3 2 1];
nx=0:length(x)-1;
h=[1 2];
nh=0:length(h);
k=2;
nup=nx(1)*k:k*nx(end);
xup=zeros(1,length(nup));
xup([1:k:length(nup)])=x;


x1=conv(xup,h);
n1=0:length(xup)+length(h)-2;

m=3; 
pos=find(mod(n1,m)==0);
ny=n1(pos)/m;
yn=x1(pos);


yf=abs(fft(yn));
y_ang=angle(fft(yn));

subplot(221)
stem(nx,x)
subplot(222)
stem(nup,xup)
subplot(223)
stem(n1,x1)
subplot(224)
stem(ny,yn)
