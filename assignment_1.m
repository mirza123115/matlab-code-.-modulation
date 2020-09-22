clear all
close all
clc
load signal
fs1=800;
fs2=400;
fs3=240;
fs4=120;
ts1=1/fs1;
ts2=1/fs2;
ts3=1/fs3;
ts4=1/fs4;
t1=-.05:ts1:-.025;
t2=-.025:ts2:0;
t3=0:ts3:.025;
t4=.025:ts4:.05;
y1=cos(120*pi*t1)+sin(60*pi*t1);
y2=cos(120*pi*t2)+sin(60*pi*t2);
y3=cos(120*pi*t3)+sin(60*pi*t3);
y4=cos(120*pi*t4)+sin(60*pi*t4);
plot(t1,y1,t2,y2,t3,y3,t4,y4)
%it is possible to recrontuct as it follow nyqrist tritaria

%%assignment2
% n=15;     %upto 15 point
% x=[1 3 2 1];
%x=[x,zeros(1,n-length(x))]
% y=[1 5 10 12 9 4 1];
% [hz,r]=deconv(y,x)


%%assignment3

x=fft(y);
fs=1e3;
x=x/fs;
df=fs/length(y);
f=-fs/2:df:fs/2-1;

f_cutoff=100;
n_cutoff=floor(f_cutoff/df);
H=zeros(size(f));
H(1:n_cutoff)=2*ones(1,n_cutoff);
H(length(f)-n_cutoff +1:length(f))=2*ones(1,n_cutoff);

subplot(246)
plot(f*df,abs(fftshift(H)))
sigf=x.*H;
sig=real(ifft(sigf))*fs;
% 

% pos=find(abs(fftshift(x))>.1);
% subplot(221)
% plot(y)
% subplot(222)
% stem(f,abs(fftshift(x)));
% subplot(223)
% plot(sig)
% subplot(224)
% stem(f,abs(fftshift(fft(sig)))/fs);



%%assignment4
% clear all
% close all
% clc
% 
% x=[ 1 2 3 2 1];
% nx=0:length(x)-1;
% h=[1 2];
% nh=0:length(h);
% k=2;
% nup=nx(1)*k:k*nx(end);
% xup=zeros(1,length(nup));
% xup([1:k:length(nup)])=x;
% 
% 
% x1=conv(xup,h);
% n1=0:length(xup)+length(h)-2;
% 
% m=3; 
% pos=find(mod(n1,m)==0);
% ny=n1(pos)/m;
% yn=x1(pos);
% 
% 
% yf=abs(fft(yn));
% y_ang=angle(fft(yn));
% 
% subplot(221)
% stem(nx,x)
% subplot(222)
% stem(nup,xup)
% subplot(223)
% stem(n1,x1)
% subplot(224)
% stem(ny,yn)
