function [average,variance,c_average,c_variance] = get_feature(A,arg)
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
%   ����ɢ���ݽ���ͳ�ƣ�����ƽ��ֵ���������������ܶ�����

b=0;
c_average=0;
%==============================work for mpu6050================================
%�۲����ݣ����ǿ���֪������mpu6050��ʼ������һ��ʱ�䣬��������ֵ���ȶ������
%������������������һ����ȥǰ��һЩ���ݵķ�����
%ͨ����ȡ�м��ȶ���ֵ�趨��ֵ���˵���Ч����

%�����������
figure('NumberTitle','off','Name',arg);
plot(A);
title('ԭʼ��������');

for a=1:(length(A)-60)
    A(a)=A(a+60);
end

figure('NumberTitle','off','Name',arg);
plot(A);
title('��ȡ����������');
%==============================end work formpu6050==============================
    
%��������ƽ��ֵ
average=mean(A);

%�������ݷ���
variance=var(A);

for a=1:length(A)
    B(a)=A(a)-average;
end

%��������ƽ��ֵ
c_average=mean(B);

%������������
c_variance=var(B);

sz1=round(min(B));
sz2=round(max(B));
%�����ܶ�����
NUM=zeros(1,sz2-sz1+1);

for a=1:length(B)
%    print('%d',a);
    B(a)=round(B(a));
    NUM(B(a)-sz1+1)=NUM(B(a)-sz1+1)+1;
end

percent=NUM/length(B);

figure('NumberTitle','off','Name',arg);
bar(percent,0.5,'g');
title('�����ܶ�')

end


