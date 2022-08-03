function [] = new_generation_v2()

global NewPopulation
global MutationCount
global CrossoverCount
global population
global fitness_values
global FitnessLimit
global EliteCount 
global scores


fitness_values = score_v2(population);

[fitness_values,sortIdx] = sort(fitness_values, 'descend');

population(:,1) = population(sortIdx,1);
population(:,2) = population(sortIdx,2);

sortIdx = 0;

%converting real numbers to bits

population_bitwise_x = '';
population_bitwise_y = '';

for ind = 1:size(population,1)
    population_bitwise_x(ind,:) = realtobit(population(ind,1));
    population_bitwise_y(ind,:) = realtobit(population(ind,2));
    
end



%increase the number of elite wrt FitnessLimit else set it to initial value
% 
% for c=1:size(fitness_values,1)
%     if(fitness_values(c)>FitnessLimit)
%         continue
%     else
%         break
%     end
%     
% end
% 
% if(c>EliteCount)
%     EliteCount = c;
% else
%     EliteCount = 20;
% end

%mutation part

for i = 1:MutationCount
    
    [NewPopulation(i,1),NewPopulation(i,2)] = mutation_v3(select_parent());
    
end

%crossover part

for i = 1:CrossoverCount
    
    parent1 = select_parent();
    parent2 = select_parent();
    
    [NewPopulation(MutationCount+i,1),NewPopulation(MutationCount+i,2)] = crossover_v2(parent1,parent2);

end

%elite part

[NewPopulation(MutationCount+CrossoverCount+1:size(population,1),1), NewPopulation(MutationCount+CrossoverCount+1:size(population,1),2)] = elite();


end

