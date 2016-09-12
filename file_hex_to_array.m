function [A_int16,A_signed_int16] = file_hex_to_array(A)
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
%   将二进制文件装存到矩阵中：目前实现一维矩阵
%   A_int16为无符号16位十六进制转换
%   A_signed_int16为有符号16位十六进制转换

aa=textread(A,'%s');
aa=hex2dec(aa);
for a=1:(size(aa)/2)
    A_int16(a)=aa(2*a-1)*256+2*aa(2*a);
end

for a=1:length(A_int16)
    if A_int16<=32767
        A_signed_int16(a)=A_int16(a);
    else
        A_signed_int16(a)=(A_int16(a)-1-32768)-32768;
    end
end

end

