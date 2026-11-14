def my_is_sort(param_1)
    param_1.each_cons(2).all? { |a, b| a <= b } || param_1.each_cons(2).all? { |a, b| a >= b }
end