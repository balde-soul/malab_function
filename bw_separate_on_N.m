function[L,H]=bw_separate_on_N(A,N)
%此函数用于调整使图像是四的倍数
%A为输入的二值图像
%L为低x_y点，H为高x_y点
%提供了如何四倍化分割的坐标，上层应用中要放弃中间部分，以达到四倍化分割


SIZE=size(A);
R=[mod(SIZE(1,1),N),mod(SIZE(1,2),N)];

L=(SIZE-R).*0.5;
H=(SIZE-R).*0.5+R+1;

end
