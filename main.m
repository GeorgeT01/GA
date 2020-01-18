%% main function
parabola = @FitnessFnc;
% Parameters for the GA
%inputs
inputs = inputdlg({'Population Size','Number of genes','Crossover', 'Mutation', 'Generations'}, ' ', [1 50; 1 50; 1 50; 1 50; 1 50]); 
population_size_val = str2num(inputs{1});
num_variables = str2num(inputs{2});
crossover_val = str2double(inputs{3});
mutation_val = str2double(inputs{4});
max_generetions = str2num(inputs{5});

options = optimoptions('ga','PlotFcn','gaplotbestf');
%options 
options.InitialPopulationRange = [-5 ; 5];
options.PopulationSize = population_size_val;
options.CrossoverFraction = crossover_val;
options.MutationFcn ={@mutationgaussian,mutation_val};
options.MaxGenerations = max_generetions;

[x,fval,exitFlag,Output] = ga(parabola,num_variables,options);




%???????? ?????, ???????????? ??????????
%fprintf('Final point returned by the algorithm : %d\n', x);
%???????? ??????? ???????????
fprintf('Fitness function value : %d\n', -fval);
%?????????? ?????? ???????
fprintf('Number of function evaluations : %d\n', Output.funccount); 

hold on
fplot(@(x) 1.*((0.7.*x - 1.7).*cos(0.5.*pi.*x + 1.5)), [-5  5]);


