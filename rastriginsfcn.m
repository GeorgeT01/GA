%%function
function y = rastriginsfcn(x)
    y = 20 + sum(x(1)^2 - 10*cos(2*pi*x(1)));
end