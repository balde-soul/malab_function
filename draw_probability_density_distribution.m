function [ A_average,A_var ] = draw_probability_density_distribution(A)
%UNTITLED2 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
%   �˺������ڻ��ƾ������ֵ���ʷֲ�ֱ��ͼ
%   A:���� A_average:ƽ��ֵ��A_var:����

fun_a=max(max(A));
%fun_b=min(A);

[fun_d,fun_e]=size(A);
fun_d=fun_d*fun_e;

NUM=zeros(1,(fun_a+1));
A_sum=0;
A_var=0;

for fun_c=1:fun_d
    A_sum=A_sum+A(fun_c);
    NUM(A(fun_c)+1)=NUM(A(fun_c)+1)+1;
end
    
A_average=A_sum/fun_d;

percent=NUM/fun_d;
x=0:(length(percent)-1);
figure('Name','probability_density_distribution');
bar(x,percent,0.5,'g');
title('�����ܶ�');

for fun_c=1:fun_d
    A_var=(A(fun_c)-A_average)^2+A_var;
end
A_var=A_var/fun_d;

end

