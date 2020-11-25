clear all;
close all;
clc;

[sol,opt_val] = Model1();

fprintf('The solution for MODEL 1 using linear programming is: ');
fprintf('\n%f',sol);
fprintf('\n\n');
fprintf('The optimized valaue of the function is %f \n\n',opt_val);

[sol,opt_val] = Model2();

fprintf('The solution for MODEL 2 using linear programming is: ');
fprintf('\n%f',sol);
fprintf('\n\n');
fprintf('The optimized valaue of the function is %f \n\n',-opt_val);