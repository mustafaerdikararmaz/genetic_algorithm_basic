function [mutationx,mutationy] = mutation()


global MutationCount


%this code for mutation
mutationx = zeros(MutationCount,1);
mutationy = zeros(MutationCount,1);


for i = 1:MutationCount

    mutationx(i,1) =  rand(1,1)*2-1;
    mutationy(i,1) =  rand(1,1)*2-1;

end


end

