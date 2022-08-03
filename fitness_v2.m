function [score] = fitness_v2(parent)

score = sqrt(2)-sqrt(parent(1)^2+parent(2)^2);

end

