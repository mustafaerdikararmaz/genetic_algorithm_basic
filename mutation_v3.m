function [childx,childy] = mutation_v3(parent)

%heavy mutation


childx = parent(1);
childy = parent(2);


p = rand();
p1 = rand(); %probability of heavy mutation is 0.2
if(p1<0.8)
    if(p>0.5)
        childx = rand()*2-1;
    else
        childy = rand()*2-1;
    end
else
    childx = rand()*2-1;
    childy = rand()*2-1;
end


end

