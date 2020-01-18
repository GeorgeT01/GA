%% main function
parabola = @rastriginsfcn;
% Parameters for the GA
%inputs
% inputs = inputdlg({'Population Size','Number of genes','Crossover', 'Mutation', 'Generations'}, ' ', [1 50; 1 50; 1 50; 1 50; 1 50]); 
% population_size_val = str2num(inputs{1});
% num_vatiables = str2num(inputs{2});
% crossover_val = str2double(inputs{3});
% mutation_val = str2double(inputs{4});
% max_generetions = str2num(inputs{5});

options = optimoptions('ga','PlotFcn','gaplotbestf');
%options 
options.InitialPopulationRange = [-5.12 ; 5.12];
options.PopulationSize = 20;
options.CrossoverFraction = 0.8;
options.MutationFcn ={@mutationgaussian, 0.1};
options.MaxGenerations = 200;

[x,fval,exitFlag,Output] = ga(parabola,10,options);
%fprintf('Final point returned by the algorithm : %d\n', x);
fprintf('Fitness function value at the final point : %d\n', fval);
fprintf('Number of function evaluations : %d\n', Output.funccount);
%fprintf('The number of generations was : %d\n', Output.generations);


