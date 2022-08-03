function [] = new_generation_v3()

global NewPopulation
global MutationCount
global CrossoverCount
global population
global fitness_values
global FitnessLimit
global EliteCount 
global scores

FitnessLimit = sqrt(2) - 0.05;


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

NewPopulation = [];

% for ind = 1:size(population,1)
%     NewPopulation(ind,1) = bittoreal(population_bitwise_x(ind,:));
%     NewPopulation(ind,2) = bittoreal(population_bitwise_y(ind,:));
%     
% end

%inreasing EliteCount due to increasing the FitnessLimit

for c=1:size(fitness_values,1)
    if(fitness_values(c)>FitnessLimit)
        continue
    else
        break
    end
    
end

if(c>EliteCount)
    EliteCount = c;
else
    EliteCount = 20;
end


%elitizm
for ind = 1:EliteCount
    NewPopulation(ind,1) = population(ind,1);
    NewPopulation(ind,2) = population(ind,2);
end

%crossover
for ind = EliteCount+1:CrossoverCount+EliteCount
    
    parent1 = select_parent();
    parent2 = select_parent();

    [bitwisenewgenx, bitwisenewgeny] = crossover_v3(realtobit(parent1(1)),realtobit(parent1(2)),realtobit(parent2(1)),realtobit(parent2(2)));
   
    NewPopulation(ind,1) = bittoreal(bitwisenewgenx);
    NewPopulation(ind,2) = bittoreal(bitwisenewgeny);
    
    
end

%mutation
for ind = EliteCount+CrossoverCount+1:size(population,1)
    
    parent = select_parent();
    parentx = realtobit(parent(1));
    parenty = realtobit(parent(2));
    [childx,childy] = mutation_v4(parentx,parenty);
    NewPopulation(ind,1) = bittoreal(childx);
    NewPopulation(ind,2) = bittoreal(childy);
    
end

population = NewPopulation;

end

