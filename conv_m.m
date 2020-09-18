function [ y,ny ] =conv_m( x,nx,h,nh )
%UNTITLED10 Summary of this function goes here
%   Detailed explanation goes here
ny=(nx(1)+nh(1)):(nx(length(x))+nh(length(h)));
y=conv(x,h);

end

