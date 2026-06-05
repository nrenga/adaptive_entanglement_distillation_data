function [n_line, col, LS, LW, Leg, pos, fig_tit, fig_x, fig_y, xrange, xtik, xlab, yrange, ytik, ylab] = R5_E_OL()
n_line = 5;
col = [0.8500 0.3250 0.0980;
       0      0.4470 0.7410;
       0.9290 0.6940 0.1250;
       0.4660 0.6740 0.1880;
       0      0      0     ];
LS = ["-", "-", "-", "-", "-"];
LW = [2, 2, 2, 2, 2];
% -
Leg = {'[[9,1,3]]-[[9,1,3]]-[[9,1,3]]';
       '[[9,1,3]]-[[9,2,3]]-[[9,2,3]]';
       '[[9,1,3]]-[[9,2,3]]-[[9,3,3]]';
       '[[9,2,3]]-[[9,2,3]]-[[9,2,3]]';
       'Envelope of optimal protocol'};
pos = 'southeast';
% -
fig_tit = '5R';
fig_x = 'F_{in}';
fig_y = 'E_{out}';
% -
xrange = [0.85 1];
xtik = 0:0.01:1;
xlab = string(xtik);
ytik = -1:0.2:0.4;
ytik = ytik*10^-2;
ylab = string(ytik);
yrange = [-1*10^-2 0.4*10^-2];

