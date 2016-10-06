function [BB] = BP_read_change(A)
%UNTITLED3 此处显示有关此函数的摘要
%   此处显示详细说明
B=imNread(A);
for i=1:length(B);
    fprintf('第：%u个',i);
    I=graythresh(B{1,i});
    B{1,i}=im2bw(B{1,i},I);
    [x_min,y_min,x_max,y_max]=bw_separate(B{1,i});
    B{1,i}=B{1,i}(x_min:x_max,y_min:y_max);
    B{1,i}=bw2MN(B{1,i},20,15,i);
    [x,y]=size(B{1,i});
    for k=1:x
        for j=1:y
            BB{1,i}(1,(k-1)*y+j)=B{1,i}(k,j);            
        end
    end
%    BBB(i,:)=BB{1,i}(1,:);
end


end

