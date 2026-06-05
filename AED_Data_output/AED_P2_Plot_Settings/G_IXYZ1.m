function [n_line, col, LS, LW, Leg, pos, fig_tit, fig_x, fig_y, xrange, xtik, xlab, yrange, ytik, ylab] = G_IXYZ1()
n_line = 4;
col = [0.8500 0.3250 0.0980;
       0      0.4470 0.7410;
       0.9290 0.6940 0.1250;
       0.4940 0.1840 0.5560;];
LS = ["-", "-", "-", "-"];
LW = [3, 3, 2, 2];
% -
Leg = {'I';
       'X';
       'Y';
       'Z'};
pos = 'southeast';
% -
fig_tit = 'BBPSSW (no twirl), F_{in} = 0.6';
fig_x = 'Number of Rounds';
fig_y = 'Probability';
% -
xrange = [0 10];
xtik = 0:10;
xlab = string(xtik);
ytik = 0:0.1:0.7;
ylab = string(ytik);
yrange = [0 0.7];

