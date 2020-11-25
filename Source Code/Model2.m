%LINEAR PROGRAMMING MODEL 2

function [x,fval] = m2()

% (MAXMIZE REVENUE) Z = 15000*x1 + 13000*x2 + 11000*x3 + 8000*x4
f = [15000;13000;11000;8000];

% Convert all the the inequalities to A*x<=b form, less than equal to constraint
    
    % 15000x1 + 13000x2 + 11000x3 + 8000x4 >= 250000
    % 5 <= x1 <= 20
    % 5 <= x2 <= 30
    % 5 <= x3 <= 25
    % 5 <= x4 <= 25
    % 0.75x2 - x1 >= 0
    % 0.5x2 - x3 >= 0
    % 0.5x2 - x4 >= 0


% Coefficient Matrix
A = [-15000 -13000 -11000 -8000;
    1 -0.75 0 0;
    0 -0.5 1 0;
    0 -0.5 0 1];

% Constant Matrix
b = [-250000;0;0;0];

% Equality Constraints
    % x4 - x3 = 3
    % x1 - x4 = 2
    
Aeq = [0 0 -1 1;1 0 0 -1];
beq = [3;2];

% LOWER BOUND - Ticket prices should be a minimum of 5
lb = [5 5 5 5];

% UPPER BOUND - Ticket prices should not be greater upper bound.
ub = [20 25 20 20];

% Now we use LINPROG method which by-default uses Dual Simplex method and 
% gives the maximum revenue which can be generated subject to given
% constraints.

[x,fval]=linprog(-f, A, b, Aeq, beq, lb, ub);

end
