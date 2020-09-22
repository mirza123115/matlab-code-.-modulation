%%assignment3
clear all
close all
clc

load signal
close all
clc
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


pos=find(abs(fftshift(x))>.1);
subplot(221)
plot(y)
subplot(222)
stem(f,abs(fftshift(x)));
subplot(223)
plot(sig)
subplot(224)
stem(f,abs(fftshift(fft(sig)))/fs);

