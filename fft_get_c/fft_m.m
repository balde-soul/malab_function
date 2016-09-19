function [B,C,D] = fft_m(A)
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明
a=fft(A);
B=real(a);
C=imag(a);
D=abs(a);

end

