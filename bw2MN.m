function [out_MN] = bw2MN(A,M,N,time_c)
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
%此函数用于将二值图片规范转化为MxN格式图片
%M行数，N列数
%输入A：二值化图片，输出out_MN规范化MxN二值图片

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

