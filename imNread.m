function [out_group] = imNread(A)
%UNTITLED2 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
%�˺�������������ȡͼƬ����ȻͼƬ��Ҫ
%A�������ַ�·��

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

