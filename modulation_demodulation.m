clear all
close all
clc
t0=.2;
ts=8.33e-004;
fc=250;
fs=1/ts;
df=.3;
t=-[-t0/2:ts:t0/2];
m=sinc(100*t);
% plot(t,c)
subplot(241)
plot(t,m)

c=cos(2*pi*fc*t);
u=m.*c;


% plot(t,u)
[M,m,df1]=fftseq(m,ts,df);
M=M/fs; 
[C,m,df1]=fftseq(c,ts,df);
C=C/fs;
[U,m,df1]=fftseq(u,ts,df);
U=U/fs;
f=[0:df1:df1*(length(m)-1)]-fs/2;

subplot(242)
plot(f,abs(fftshift(M)))
subplot(243)
plot(f,abs(fftshift(C)))
subplot(244)
plot(f,abs(fftshift(U)))
d=u.*c;
[D,m,df1]=fftseq(d,ts,df);
D=D/fs;


subplot(245)
plot(f,abs(fftshift(D)))
f_cutoff=100;
n_cutoff=floor(f_cutoff/df1);
H=zeros(size(f));
H(1:n_cutoff)=2*ones(1,n_cutoff);
H(length(f)-n_cutoff +1:length(f))=2*ones(1,n_cutoff);

subplot(246)
plot(f*df,abs(fftshift(H)))
DEM=D.*H;

subplot(247)
plot(f,abs(fftshift(DEM)))
dem=real(ifft(DEM))*fs;
subplot(248)
plot(t,dem(1:length(t)))