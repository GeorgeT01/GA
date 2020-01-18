%% main function
parabola =@fnc;
% Parameters for the GA
%inputs
%inputs = inputdlg({'Population Size','Number of genes','Crossover', 'Mutation', 'Generations'}, ' ', [1 50; 1 50; 1 50; 1 50; 1 50]); 
population_size_val = 10;
num_vatiables = 10;
crossover_val = 0.8;
mutation_val = 0.1;
max_generetions = 10;

options = optimoptions('ga','PlotFcn','gaplotbestf');
%options 
% options.PopInitRange = [-6 ; 6];
options.PopulationSize = population_size_val;
options.CrossoverFraction = crossover_val;
options.MutationFcn ={@mutationgaussian, mutation_val};
options.MaxGenerations = max_generetions;

[x,fval,exitFlag,Output] = ga(parabola,num_vatiables,options);

% hold on
% fplot('(0.7*x -1.7) * cos(0.5*pi*x +1.5)');

% fprintf('Final point returned by the algorithm : %d\n', x);
fprintf('Fitness function value at the final point : %d\n', fval);
fprintf('Number of function evaluations : %d\n', Output.funccount);
%fprintf('The number of generations was : %d\n', Output.generations);
%optimtool('ga')

