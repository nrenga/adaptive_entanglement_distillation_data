function [n_plot, DB_name] = AED_P3_plot_table_info(Fig)
if Fig == 2
    n_plot = 3;
    DB_name = ["R3_F_CXX", "R3_F_XCX", "R3_F_XXC"];
elseif Fig == 3
    n_plot = 3;
    DB_name = ["R3_F_CXX", "R3_F_CCX", "R3_F_CCC"];
elseif Fig == 4
    n_plot = 6;
    DB_name = ["R1_F_CCX", "R1_F_CCC", "R3_F_CCX", "R3_F_CCC", "R5_F_CCX", "R5_F_CCC"];
elseif Fig == 5
    n_plot = 9;
    DB_name = ["R1_E_OL", "R3_E_OL", "R5_E_OL", "R7_E_OL", "R9_E_OL", "R11_E_OL", "R13_E_OL", "R101_E_OL", "R1001_E_OL"];
end