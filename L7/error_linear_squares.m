function err = error_linear_squares(nodes, values, a, b)
	err = sum(values - (nodes * a + b)) .^ 2
endfunction