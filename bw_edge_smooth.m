function[B]=bw_edge_smooth(A)
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
%�˺���������ĸʶ��ʱ��������ĸ�ֱ��ʵ�����ĸ�߽�ֲ�
%δ����ֲ����⣬�˺������ڱ�Եƽ��
%�����ֵ��ͼ��A�����ƽ����Ķ�ֵͼ��B
[i,k]=size(A);
B(:,:)=A(:,:);
for x=2:i-1
    for y=2:k-1
        B(x,y)=5.*A(x,y)-A(x+1,y)-A(x-1,y)-A(x,y+1)-A(x,y-1);
        if B(x,y)==0
            B(x,y)=0;
        else
            B(x,y)=1;
        end
    end
end
end

