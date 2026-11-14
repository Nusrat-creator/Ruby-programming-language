require 'csv'
def my_csv_parser(param_1, param_2)
    result_2d_array = CSV.parse(param_1, col_sep: param_2)
end
