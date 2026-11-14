def my_array_uniq(param_1)
    i = 0
    arr = []
    while(i<param_1.length)
        if (arr.include?(param_1[i]) == false)
            arr << param_1[i]
        end
        i+=1
    end
    arr
end