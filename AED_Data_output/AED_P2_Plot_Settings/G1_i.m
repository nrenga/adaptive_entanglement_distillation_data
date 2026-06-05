function [n_line, col, LS, LW, Leg, pos, fig_tit, fig_x, fig_y, xrange, xtik, xlab, yrange, ytik, ylab] = G1_i()
n_line = 4;
col = [0.8500 0.3250 0.0980;
       0      0.4470 0.7410;
       0.4940 0.1840 0.5560;
       0      0      0     ];
LS = ["-", "-", "-", "--"];
LW = [3, 2, 2, 2];
% -
Leg = {'DEJMPS + [[9,3,3]]';
       '[[9,3,3]]';
       'DEJMPS';
       'DEJMPS (pre-[[9,3,3]])'};
pos = 'northeast';
% -
fig_tit = 'Single Link (Total Number of Rounds)';
fig_x = 'F_{in}';
fig_y = 'i_{out}';
% -
xrange = [0.501 1];
xtik = 0.5:0.02:1;
xlab = {'0.5','0.52','','0.56','','0.6','','0.64','','0.68','','0.72','','0.76','','0.8','','0.84','','0.88','','0.92','','0.96','','1'};
ytik = 0:20;
ylab = {'0','','2','','4','','6','','8','','10','','12','','14','','16','','18','','20'};
yrange = [0 20];

