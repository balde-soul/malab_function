function [B,C,D] = fft_m(A)
%UNTITLED2 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
a=fft(A);
B=real(a);
C=imag(a);
D=abs(a);

end

