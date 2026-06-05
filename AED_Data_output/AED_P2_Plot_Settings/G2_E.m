function [n_line, col, LS, LW, Leg, pos, fig_tit, fig_x, fig_y, xrange, xtik, xlab, yrange, ytik, ylab] = G2_E()
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
pos = 'southeast';
% -
fig_tit = 'Single Link (Efficiency)';
fig_x = 'F_{in}';
fig_y = 'E_{out}';
% -
xrange = [0.815 1];
xtik = 0.5:0.01:1;
xlab = string(xtik);
ytik = -0.2:0.1:1;
ylab = string(ytik);
yrange = [-0.2 1];

