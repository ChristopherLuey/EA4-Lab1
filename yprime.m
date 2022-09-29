function f = yprime(t,P)
%Calculates the right side of a differential equation
%   This function is called with the function ode45 on the pop.m script

% Globalizing the variables 'count', 'b', and 'dur' between pop.m and 
% yprime.m
global count b dur
% Defining variables
b = 0.8;
dur = 0.5;
% Measures the computational work by counting the amount of times yprime is
% called
count = count + 1;
% Calculates the right side of the given differential equation
f = P.*(1.-P);


end

