function [] = gamain()
clearvars -global -except population population_size

global CrossoverFraction
global EliteCount 
global NewPopulation
global MutationCount
global CrossoverCount
global population
global population_size
global FitnessLimit
global fitness_values
global scores

%NewPopulation = zeros(20,2);
EliteCount = 20;
CrossoverFraction = 0.8;
CrossoverCount = round((size(population,1)-EliteCount)*CrossoverFraction);
MutationCount = size(population,1)-EliteCount-CrossoverCount;
FitnessLimit = sqrt(2)-0.05;
MaxGeneration = 100;
scores = zeros(size(population,1),MaxGeneration);

figure;
hold on;
data = zeros(MaxGeneration,1);

%I generate new population here.

ind = 1;
while(1)

    new_generation_v3();
    data(ind) = sum(fitness_values);
    if(data(ind)>280)
        break
    end
    if(ind > MaxGeneration)
        break
    end
    
    subplot(10,10,ind);
    scatter(NewPopulation(:,1),NewPopulation(:,2),'filled');
    xlim([-1 1]);
    ylim([-1 1]);
    
    
    fprintf('Generation %d\n', ind);
    ind = ind+1;
    
end

%writematrix(scores,'scores.txt','Delimiter','tab');


%this file contains the scores of every parent in every generation.

file = fopen('scores.txt','w');
for ind = 1:MaxGeneration
    for indd = 1:population_size
        fprintf(file,'%1.5f ',scores(indd,ind));
    end
    fprintf(file,'\n');
end
fclose(file);

% hold off

% % %this plot is for the data of the total fitness of the generation
% % %I expect that it converges but it is not
% % %I think the problem starts here
% figure;
% plot((1:100),data,'LineWidth',0.8);
% title("Total Fitness vs Generation");
% xlim([1 100]);



end