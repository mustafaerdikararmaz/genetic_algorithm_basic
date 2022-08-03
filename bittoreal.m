function [individual] = bittoreal(bitwise)

number = bin2dec(bitwise(2:11));
if(bitwise(1)=='1')
    number = -number;
end

number = number/1000;

individual = number;


end

