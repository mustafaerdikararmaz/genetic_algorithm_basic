function [bitwise] = realtobit(realnum)


if(realnum<0)
    sign = '1';
else
    sign = '0';
end

temp = abs(round(1000*realnum));

binary = dec2bin(temp);

remain = 10-length(binary);

binary_with_zeros = '';

for ind = 1:remain  
    binary_with_zeros(ind) = '0';
end


for ind = remain+1:10
    binary_with_zeros(ind) = binary(ind-remain);
end

binary_with_sign = sign;

for ind = 2:11
    binary_with_sign(ind) = binary_with_zeros(ind-1);
end

bitwise = binary_with_sign;

end

