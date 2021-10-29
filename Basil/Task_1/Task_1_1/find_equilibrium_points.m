function [x_1,x_2] = find_equilibrium_points(x1_dot, x2_dot)
  x1_dot == 0;
  x2_dot == 0;
  ################## ADD YOUR CODE HERE ######################
  [x_1 ,x_2] = solve(x1_dot , x2_dot);
  ############################################################  
  x_1=double(x_1);
  x_2=double(x_2);