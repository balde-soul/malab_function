function [ output_args ] = wiener_filter
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明

L=input('请输入信号长度L=');
N=input('请输入滤波器阶数N=');
%昌盛w(n),v(n),u(n),s(n),x(n)
a=0.95;
b1=sqrt(12*(1-a^2))/2;
b2=sqrt(3);
w=random('uniform',-b1,b1,1,L);
v=random('uniform',-b2,b2,1,L);
u=zeros(1,L);
for i=1:L
    u(i)=1;
end
s=zeros(1,L);
for i=2:L
    s(i)=a*s(i-1)+w(i);
end
x=zeros(1,L);
x=s+v;
%绘图s(n),x(n)

set(gcf,'Color',[1,1,1]);
i=L-100:L;
subplot(2,2,1);
plot(i,s(i),i,x(i),'r');
title('s(n)&x(n)');
legend('s(n)','x(n)');
%计算理想滤波器的h(n)
h1=zeros(N:1);
for i=1:N
    h1(i)=0.238*0.724^(i-1)*u(i);
end
%利用公式，计算Rxx和rxs
Rxx=zeros(N,N);
rxs=zeros(N,1);
for i=1:N
    for j=1:N
        m=abs(i-j);
        tmp=0;
        for k=1:(L-m)
            tmp=tmp+x(k)*x(k+m);
        end
        Rxx(i,j)=tmp/(L-m);
    end
end
for m=0:N-1
    tmp=0;
    for i=1:L-m
        tmp=ymp+x(i)*s(m+i);
    end
    rxs(m+1)=tmp/(L-m);
end
%产生FIR维纳滤波器的h(n)


end

