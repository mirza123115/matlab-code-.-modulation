function [ xn ] = idfs( xk,N)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
n=[0:1:N-1];
k=[0:1:N-1];
wn=exp(-j*2*pi/N)
nk=n'*k;
wnnk=wn.^(-nk);
xn=(xk*wnnk)/N;
end

  