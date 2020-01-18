
fun = @FitnessFnc;

[x,fval,exitFlag,Output] = ga(fun,1,[],[],[],[],-5,5);
fprintf('Fitness function value at the final point : %d\n', fval);
fprintf('Number of function evaluations : %d\n', Output.funccount); 