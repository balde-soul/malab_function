function[L,H]=bw_separate_on_N(A,N)
%�˺������ڵ���ʹͼ�����ĵı���
%AΪ����Ķ�ֵͼ��
%LΪ��x_y�㣬HΪ��x_y��
%�ṩ������ı����ָ�����꣬�ϲ�Ӧ����Ҫ�����м䲿�֣��Դﵽ�ı����ָ�


SIZE=size(A);
R=[mod(SIZE(1,1),N),mod(SIZE(1,2),N)];

L=(SIZE-R).*0.5;
H=(SIZE-R).*0.5+R+1;

end
