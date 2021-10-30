function [eigen_values stability] = check_eigen_values(x_1, x_2, jacobian_matrices)
  stability = {};
  eigen_values = {};
  for k = 1:length(jacobian_matrices)
    matrix = jacobian_matrices{k};
    flag = 1;
    ################## ADD YOUR CODE HERE ######################
     eigen_value = eig(matrix);
     eigen_values{k} = eigen_value; 
     if any(real(eigen_value) > 0) != 0,
       flag = 0;
     end;
    ############################################################
    if flag == 1
      fprintf("The system is stable for equilibrium point (%d, %d) \n",double(x_1(k)),double(x_2(k)));
      stability{k} = "Stable";
    else
      fprintf("The system is unstable for equilibrium point (%d, %d) \n",double(x_1(k)),double(x_2(k)));
      stability{k} = "Unstable";
    endif
  endfor
endfunction