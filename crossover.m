function [crossoverx,crossovery] = crossover()

global population
global CrossoverCount

crossoverx = zeros(CrossoverCount,1);
crossovery = zeros(CrossoverCount,1);

index1 = randi([1 CrossoverCount],CrossoverCount,1);
index2 = randi([1 CrossoverCount],CrossoverCount,1);


for i = 1:CrossoverCount
    p = rand();
    p1 = 1-i/CrossoverCount;
    if (p1>p)
        crossoverx(i,1) = population(index1(i,1),1);
        crossovery(i,1) = population(index2(i,1),2);
    else
        [crossoverx(i,1),crossovery(i,1)] = population(i);
    end
end







end

