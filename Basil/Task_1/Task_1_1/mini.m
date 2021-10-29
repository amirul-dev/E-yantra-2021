function retval = mini (x)
  retval = x(1);
  for i = 2:length(x),
    if x(i) < retval,
      retval = x(i)
    end;
  end;
endfunction
