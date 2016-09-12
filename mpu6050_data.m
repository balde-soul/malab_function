function [average,variance,c_arverage,c_variance] = mpu6050_data(A,arg)

[C,B]=file_hex_to_array(A);

[average,variance,c_arverage,c_variance]=get_feature(B,arg);

end


