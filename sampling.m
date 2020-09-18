clear all
close all
clc
ts=1/1000;
t=-.1:ts:.1;
nmin=ceil(-.1/ts);
nmx=floor(.1/ts);

n=nmin:nmx;
y=10*sin(100*2*pi*t+30)+5*cos(50*2*pi*t+45);
subplot(4,1,1)
plot(t,y);
y=10*sin(100*2*pi*n*ts+30)+5*cos(50*2*pi*n*ts+45);
subplot(4,1,2)
stem(n,y)

k=4;
nup=n(1)*k:k*n(end);
yup=zeros(1,length(nup));
yup([1:k:length(nup)])=y;
subplot(4,1,3)
stem(nup,yup)

m=4; 
pos=find(mod(nup,m)==0);
ndn=nup(pos)/m;
ydn=yup(pos);
subplot(4,1,4)
stem(ndn,ydn)

