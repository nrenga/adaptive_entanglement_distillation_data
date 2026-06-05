function [n_line, col, LS, LW, Leg, pos, fig_tit, fig_x, fig_y, xrange, xtik, xlab, yrange, ytik, ylab] = R3_F_CXX()
n_line = 5;
col = [0.7500 0      0.7500;
       0      0      0     ;
       0.7000 0.7000 0.7000;
       0.8500 0.3250 0.0980;
       0      0.4470 0.7410];
LS = ["-", "-", "-", "-", "-"];
LW = [2, 2, 2, 2, 2];
% -
Leg = {'No Coding, n=1';
       '0R, [[5,1,3]]';
       '0R, [[7,1,3]]';
       '[[5,1,3]]-X-X';
       '[[7,1,3]]-X-X'};
pos = 'northwest';
% -
fig_tit = '3R, C-X-X';
fig_x = 'F_{in}';
fig_y = 'F_{out}';
% -
xrange = [0.85 1];
xtik = 0:0.01:1;
xlab = string(xtik);
ytik = 0:0.02:1;
ylab = string(ytik);
yrange = [0.75 1];

