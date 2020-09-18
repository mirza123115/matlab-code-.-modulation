function [ xe,xo,n ] = evenodd( x,m )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
[xf,nf]=sigfold(x,m);
xe=.5.*(sigadd(x,m,xf,nf));
xo=.5.*(sigadd(x,m,-xf,nf));
n=(min(min(m),min(nf))):(max(max(m),max(nf)));

end

