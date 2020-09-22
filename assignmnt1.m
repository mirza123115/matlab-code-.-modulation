clear all
close all
clc
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
plot(t1,y1,'o',t2,y2,'o',t3,y3,'o',t4,y4,'o')
hold on
plot(t1,y1,t2,y2,t3,y3,t4,y4)
%it is possible to recrontuct as it follow nyqrist tritaria
