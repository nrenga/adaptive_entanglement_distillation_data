function [n_plot, DB_name] = AED_P3_plot_figure_info(Fig)
if Fig == 3
    n_plot = 4;
    DB_name = ["BBPSSW_t", "BBPSSW_nt", "DEJMPS_t", "DEJMPS_nt" ];
elseif Fig == 4
    n_plot = 2;
    DB_name = ["G_IXYZ1", "G_IXYZ2"];
elseif Fig == 7
    n_plot = 1;
    DB_name = "R0_F";
elseif Fig == 8
    n_plot = 1;
    DB_name = "R1_E_OL";
elseif Fig == 9
    n_plot = 3;
    DB_name = ["R1_R_OL", "R1_F_OL", "R1_D_OL"];
elseif Fig == 10
    n_plot = 2;
    DB_name = ["L1", "L2"];
elseif Fig == 11
    n_plot = 1;
    DB_name = "G1_F";
elseif Fig == 12
    n_plot = 1;
    DB_name = "G1_i";
elseif Fig == 13
    n_plot = 1;
    DB_name = "G1_R";
elseif Fig == 14
    n_plot = 2;
    DB_name = ["G2_E", "G2_F"];
elseif Fig == 15
    n_plot = 2;
    DB_name = ["G3_D", "G3_E"];
elseif Fig == 17
    n_plot = 4;
    DB_name = ["R3_F_CXX", "R3_F_CCX", "R3_F_CXC", "R3_F_CCC"];
elseif Fig == 18
    n_plot = 1;
    DB_name = "R3_E_OL";
elseif Fig == 19
    n_plot = 1;
    DB_name = "R5_E_OL";
end





