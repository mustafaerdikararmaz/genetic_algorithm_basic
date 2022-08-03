function [childx,childy] = mutation_v4(parentx,parenty)

%heavy mutation


childx = parentx;
childy = parenty;

flag1 = randi([1 11],1,1);
flag2 = randi([1 11],1,1);

start = min(flag1,flag2);
final = max(flag1,flag2);

p = rand();
if(p>0.5)
    for ind = start:final
        if(parentx(ind)=='1')
            if(rand()>0.5)
                childx(ind) = '0';
            end
        else
            if(rand()>0.5)
                childx(ind) = '1';
            end
        end

    end
else
    for ind = start:final
        if(parenty(ind)=='1')
            if(rand()>0.5)
                childy(ind) = '0';
            end
        else
            if(rand()>0.5)
                childy(ind) = '1';
            end
        end

    end
end

end

