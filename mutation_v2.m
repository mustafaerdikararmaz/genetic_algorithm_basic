function [childx,childy] = mutation_v2(parent)



childx = parent(1);
childy = parent(2);


p = rand();

if(p>0.5)
    childx = rand()*2-1;
else
    childy = rand()*2-1;
end


end

