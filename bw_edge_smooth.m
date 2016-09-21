function[B]=bw_edge_smooth(A)
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
%此函数在做字母识别时，增加字母分辨率导致字母边界粗糙
%未解决粗糙问题，此函数用于边缘平滑
%输入二值化图像A，输出平滑后的二值图像B
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

