function [n_line, col, LS, LW, Leg, pos, fig_tit, fig_x, fig_y, xrange, xtik, xlab, yrange, ytik, ylab] = G3_D()
n_line = 6;
col = [1      0      1     ;
       1      0      1     ;
       0.8500 0.3250 0.0980;
       0      0.4470 0.7410;
       0.4940 0.1840 0.5560;
       0      0      0     ];
LS = ["-", "--", "-", "-", "-", "--"];
LW = [2, 2, 3, 2, 2, 2];
% -
Leg = {'DEJMPS + No Coding';
       'No Coding';
       'DEJMPS + [[9,3,3]]';
       '[[9,3,3]]';
       'DEJMPS';
       'DEJMPS (pre-[[9,3,3]])'};
pos = 'southeast';
% -
fig_tit = 'Single Link (Distillable Entanglement)';
fig_x = 'F_{in}';
fig_y = 'D_{out}';
% -
xrange = [0.501 1];
xtik = 0.5:0.02:1;
xlab = {'0.5','0.52','','0.56','','0.6','','0.64','','0.68','','0.72','','0.76','','0.8','','0.84','','0.88','','0.92','','0.96','','1'};
ytik = [-1:0.2:0, 0.12, 0.2:0.2:1];
ylab = string(ytik);
yrange = [-1 1];

