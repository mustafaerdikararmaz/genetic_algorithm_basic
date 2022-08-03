function [childx,childy] = crossover_v2(parent1,parent2)


child1 = parent1;
child2 = parent2;
child = parent1;

p = rand();
p1 = 0.5;
% p3 = rand()+1;



if(p<p1)
    child2(1) = parent1(1);
    child1(1) = parent2(1);
else
    child2(2) = parent1(2);
    child1(2) = parent2(2);
end

% if(p<p3)
%     child2(1) = parent1(2);
%     child1(1) = parent2(2);
% else
%     child2(2) = parent1(1);
%     child1(2) = parent2(1);
% end

p2 = rand();
if(p2>0.5)
    child = child1;
else
    child = child2;
end

childx = child(1);
childy = child(2);

end

