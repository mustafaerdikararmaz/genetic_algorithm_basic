function [elitesx,elitesy] = elite()

global population
global EliteCount



for i=1:EliteCount
   elitesx = population(i,1);
   elitesy = population(i,2);
    
end

end

