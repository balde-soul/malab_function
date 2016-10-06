function [out_group] = imNread(A)
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明
%此函数用于批量读取图片，当然图片需要
%A：输入字符路径

file_group=dir(A);
[x,y]=size(file_group);
for i=3:x
    out_group{i-2}=imread(file_group(i).name);
end

%cd d:/matlab_personal_image/ABC_list/;
%list=ls;
%[x,y]=size(list);
%for i=3:x
%    out_group{i-2}=imread(list(i,:));
%end
end

