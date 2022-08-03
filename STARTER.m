clear all
clc

global population
global population_size


population_size = 200;

generate_population();

% figure;
% 
% 
% subplot(1,2,1);
% 
% 
% scatter(population(:,1),population(:,2),[],'filled','MarkerFaceColor',[1,0,0]);
% title("First generated population");

gamain();


%subplot(1,2,2);

% scatter(population(:,1),population(:,2),[],'filled','MarkerFaceColor',[0,0,1]);
% xlim([-1 1]);
% ylim([-1 1]);
% title("Population after 100 generation");

