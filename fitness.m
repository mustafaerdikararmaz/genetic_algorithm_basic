function [fitness_values] = fitness(population)

i = 1;
fitness_values = ones(size(population,1),1)+sqrt(2);
for index = 1:size(population,1)
    
    fitness_values(i) = score(population(i,:)) ;
    i = i+1;

end


