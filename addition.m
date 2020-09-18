clear all
close all
clc
x1=[ 1 2 3 4 5];
n1=[0 1 2 3 4];
x2=[3 4 5 6];
n2=[-1 0 1 2];
[y,n]=sigadd(x1,n1,-x2,n2);
 [a b c]=evenodd(x1,n1);


n=min(min(n1),min(n2)):max(max(n1),max(n2));
y1=zeros(1,length(n));
y2=y1;
y1(find((n>=min(n1))&(n<=max(n1))==1))=x1;
y2(find((n>=min(n2))&( n<=max(n2))==1))=x2;
subplot(311)
stem(n,y1);
subplot(312)
stem(n,y2);
subplot(313)
stem(n,y);