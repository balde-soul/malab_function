function [average,variance,c_average,c_variance] = get_feature(A,arg)
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
%   对离散数据进行统计，计算平均值，均方差，输出概率密度曲线

b=0;
c_average=0;
%==============================work for mpu6050================================
%观察数据，我们可以知道对于mpu6050初始化后有一段时间，传感器数值不稳定，因此
%我们在这个函数中添加一个滤去前面一些数据的方法，
%通过读取中间稳定数值设定阈值以滤掉无效数据

%输出数据曲线
figure('NumberTitle','off','Name',arg);
plot(A);
title('原始数据曲线');

for a=1:(length(A)-60)
    A(a)=A(a+60);
end

figure('NumberTitle','off','Name',arg);
plot(A);
title('截取后数据曲线');
%==============================end work formpu6050==============================
    
%计算数据平均值
average=mean(A);

%计算数据方差
variance=var(A);

for a=1:length(A)
    B(a)=A(a)-average;
end

%计算噪声平均值
c_average=mean(B);

%计算噪声方差
c_variance=var(B);

sz1=round(min(B));
sz2=round(max(B));
%概率密度曲线
NUM=zeros(1,sz2-sz1+1);

for a=1:length(B)
%    print('%d',a);
    B(a)=round(B(a));
    NUM(B(a)-sz1+1)=NUM(B(a)-sz1+1)+1;
end

percent=NUM/length(B);

figure('NumberTitle','off','Name',arg);
bar(percent,0.5,'g');
title('概率密度')

end


