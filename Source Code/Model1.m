%INTEGER LINEAR PROGRAMMING MODEL 1

function [x,fval] = m2()

% Minimize Z = x1 + x2 + x3 + x4 + x5 + x6
f = [1;1;1;1;1;1];

% Since x1,x2,x3,x4,x5,x6 all are integers.
intcon = [1,2,3,4,5,6];

% Convert all the the inequalities to A*x<=b form (less than equal to constraint
    
    % -1600*x1 <= -11000
    % -1600*x1 + -1600*x2 <= -26000
    % -1600*x2 + -1600*x3 <= -12000
    % -1600*x3 + 1600*x4 <= -23000
    % -1600*x4 + 1600*x5 <= -10000
    % -1600*x5 + 1600*x6 <= -7000

% Coeffiecient Matrix 
A = [-1600 0 0 0 0 0;
    
    -1600 -1600 0 0 0 0;
    
    0 -1600 -1600 0 0 0;
    
    0 0 -1600 -1600 0 0;
    
    0 0 0 -1600 -1600 0;
    
    0 0 0 0 -1600 -1600];

% Constant Matrix
b = [-11000;
    
    -26000;
    
    -12000;
     
    -23000;
    
    -10000;
    
    -7000];

% Since there are no equality constraits Aeq = [] and beq = []
Aeq = [];
beq = [];

% Lower Bound : x1,x2,x3,x4,x5,x6 >= 1
lb = [1 1 1 1 1 1];

% Upper Bound : x1,x2,x3,x4,x5,x6 are unbounded
ub = [];

% We use intlinprog (Mixed Integer Linear Programming)
% And use algorithm which gives the required optimized value.

[x,fval] = intlinprog(f,intcon,A, b, Aeq, beq, lb, ub);

% The minimum number of trains required is 37.
end

