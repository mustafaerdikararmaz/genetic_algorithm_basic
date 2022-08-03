function [] = new_generation()


global NewPopulation
global MutationCount
global CrossoverCount
global population



fitness_values = fitness(population);

[fitness_values,sortIdx] = sort(fitness_values, 'descend');


population(:,1) = population(sortIdx,1);
population(:,2) = population(sortIdx,2);

sortIdx = 0;



[NewPopulation(1:MutationCount,1),NewPopulation(1:MutationCount,2)] = mutation();

[NewPopulation(MutationCount+1:MutationCount+CrossoverCount,1),NewPopulation(MutationCount+1:MutationCount+CrossoverCount,2)] = crossover();

[NewPopulation(MutationCount+CrossoverCount+1:size(population,1),1), NewPopulation(MutationCount+CrossoverCount+1:size(population,1),2)] = elite();




end