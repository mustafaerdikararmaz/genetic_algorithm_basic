function [parent] = select_parent()

global population
global fitness_values
global EliteCount

% parent = population(1,:);

index = EliteCount:size(population,1);

%giving a probability to each parent wrt fitness values.
%after that we choose the parent with that probability


probabilities = fitness_values(EliteCount:size(population,1))/sum(fitness_values(EliteCount:size(population,1)));

index_parent = randsample(index,1,true,probabilities);

parent = population(index_parent,:);


% for i=1:size(population,1)
%     if(probabilities(i)>p)
%         parent = population(i,:);
%         break;
%     end
% end

end

