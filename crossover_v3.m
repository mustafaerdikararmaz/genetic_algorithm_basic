function [childx,childy] = crossover_v3(parent1_x,parent1_y,parent2_x,parent2_y)




child1_x = parent1_x;
child1_y = parent1_y;
child2_x = parent2_x;
child2_y = parent2_y;



flag1 = randi([1,11],1,1);
flag2 = randi([1,11],1,1);

start = min(flag1,flag2);
final = max(flag1,flag2);

p = rand();

child1_x(start:final) = parent2_x(start:final);
child1_y(start:final) = parent2_y(start:final);

child2_x(start:final) = parent1_x(start:final);
child2_y(start:final) = parent1_y(start:final);

if(p>0.5)
    childx = child1_x;
    childy = child1_y;
else
    childx = child2_x;
    childy = child2_y;
end



end

