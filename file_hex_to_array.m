function [A_int16,A_signed_int16] = file_hex_to_array(A)
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
%   ���������ļ�װ�浽�����У�Ŀǰʵ��һά����
%   A_int16Ϊ�޷���16λʮ������ת��
%   A_signed_int16Ϊ�з���16λʮ������ת��

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

