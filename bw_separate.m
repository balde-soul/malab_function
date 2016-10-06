function [a,b,c,d] = bw_separate(A)
%UNTITLED4 此处显示有关此函数的摘要
%   此处显示详细说明
%   
%   此函数用于拆分二值图像中分离的兴趣点
%   原理在于扫描得到兴趣值
persistent count_t;
count_t=0;
[x,y]=size(A);
start_x=1;
start_y=1;
for i=start_x:x
    for k=start_y:y
        if A(i,k)==0
            count_t=count_t+1;
            fprintf('%d\n',count_t);
            [a,b,c,d]=get_cell_cordinate(A,i,k);
            break;
        end
    end
    if count_t==1
        break;
    end
end

end

%此函数是基于扫描到的字母左上定点，进行延扩截取字母区域
%采取趋势判断方法，得到母图像中字母的区域，即A(x_min:x_max,y_min:y_max)
function [x_min,y_min,x_max,y_max] = get_cell_cordinate(A,x_int,y_int)
add_l_x=1;
add_l_y=1;
add_r_x=1;
add_r_y=1;
Xr=x_int;
Yr=y_int;
Xl=x_int;
Yl=y_int;
[X,Y]=size(A);
while add_l_x||add_l_y||add_r_x||add_r_y
    Xr=Xr+add_r_x;
    Yr=Yr+add_r_y;
    Xl=Xl+add_l_x;
    Yl=Yl-add_l_y;
    fprintf('image changing !\n');
    if Yr<=Y
    for i=x_int:min(Xr,X)
        if A(i,Yr)==0
            add_r_y=1;
            break;
        else
            add_r_y=0;
        end
    end
    else
        add_r_y=0;
    end
    if Xr<=X
    for i=y_int:min(Yr,Y)
        if A(Xr,i)==0
            add_r_x=1;
            break;
        else
            add_r_x=0;
        end
    end
    else
        add_r_x=0;
    end
    if Yl>0
    for i=x_int:min(Xl,X)
        if A(i,Yl)==0
            add_l_y=1;
            break;
        else
            add_l_y=0;
        end
    end
    else
        add_l_y=0;
    end
    if Xl<X
    for i=max(Yl,1):y_int
        if A(Xl,i)==0
            add_l_x=1;
            break;
        else
            add_l_x=0;
        end
    end
    else
        add_l_x=0;
    end
end
x_min=min([x_int,Xr-1,Xl-1]);
y_min=min([y_int,Yr-1,Yl+1]);
x_max=max([x_int,Xr-1,Xl-1]);
y_max=max([y_int,Yr-1,Yl+1]);
fprintf('success\n');
return
end

