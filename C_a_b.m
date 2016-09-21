function [y] = C_a_b(a,b)
%UNTITLED3 此处显示有关此函数的摘要
%   此处显示详细说明
%概率问题a总体中取b个个体的类别数

al=length(a);
%bl=length(b);

y=zeros(length(a),length(b));
for i=2:al
    for k=1:round(a(1,i)/2)
        y(i,k)=0.5^round(a(1,i)/2)*factorial(a(1,i)-b(1,k))/(factorial(round(a(1,i)/2))*factorial(round(a(1,i)/2)-b(1,k)));
    end
end

end

