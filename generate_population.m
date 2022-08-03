function [] = generate_population()
global population
global population_size

population = [rand(population_size,1)*2-1 rand(population_size,1)*2-1];

end