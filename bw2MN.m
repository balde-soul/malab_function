function [out_MN] = bw2MN(A,M,N,time_c)
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
%�˺������ڽ���ֵͼƬ�淶ת��ΪMxN��ʽͼƬ
%M������N����
%����A����ֵ��ͼƬ�����out_MN�淶��MxN��ֵͼƬ

[x,y]=size(A);
for i=2:(x-1)
    for j=2:(y-1)
        n=i./(x./M);
        n=ceil(n);
        m=j./(y./N);
        m=ceil(m);
        fprintf('i:%u,j:%u,n:%u,m:%u,time_c:%u\n\n',i,j,n,m,time_c);
        KK(n,m)=(A(i,j)+A(i,j+1)+A(i,j-1)+A(i-1,j))/4;
        out_MN(n,m)=floor(KK(n,m));
    end
end
end

