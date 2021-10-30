function jacobian_matrices = find_jacobian_matrices(x_1, x_2, x1_dot, x2_dot)
  syms x1 x2
  solutions = [x_1, x_2];
  jacobian_matrices = {};
  ################## ADD YOUR CODE HERE ######################

  jac = jacobian([x1_dot;x2_dot]);
  for i = 1:rows(solutions),
    jacobian_matrices(i) = double(subs(jac, {x1 x2}, {solutions(i,1) solutions(i,2)}));
  end;


  ############################################################  
endfunction