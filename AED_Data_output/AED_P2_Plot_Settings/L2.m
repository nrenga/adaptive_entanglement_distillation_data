function [n_line, col, LS, LW, Leg, pos, fig_tit, fig_x, fig_y, xrange, xtik, xlab, yrange, ytik, ylab] = L2()
n_line = 7;
col = [0      0      0     ;
       0      0      0     ;
       0.8500 0.3250 0.0980;
       0      0.4470 0.7410;
       0.9290 0.6940 0.1250;
       0.4660 0.6740 0.1880;
       0.4940 0.1840 0.5560;];
LS = ["-", "--", "-", "-", "-", "-", "-"];
LW = [3, 3, 2, 2, 2, 2, 2];
% -
Leg = {'BBPSSW, i=1';
       'BBPSSW, i=2';
       'DEJMPS (no twirl), i=1';
       'DEJMPS (no twirl), i=2';
       'DEJMPS (no twirl), i=3';
       'DEJMPS (no twirl), i=5';
       'DEJMPS (no twirl), i=10'};
pos = 'southwest';
% -
fig_tit = 'Single Link (Discard), DEJMPS (no twirl)';
fig_x = 'F_{in}';
fig_y = 'P_{discard}';
% -
xrange = [0 1];
xtik = 0:0.05:1;
xlab = {'0','','0.1','','0.2','','0.3','','0.4','','0.5','','0.6','','0.7','','0.8','','0.9','','1'};
ytik = 0:0.1:1;
ylab = string(ytik);
yrange = [0 1];

