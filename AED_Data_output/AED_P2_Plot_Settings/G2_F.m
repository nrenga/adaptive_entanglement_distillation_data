function [n_line, col, LS, LW, Leg, pos, fig_tit, fig_x, fig_y, xrange, xtik, xlab, yrange, ytik, ylab] = G2_F()
n_line = 5;
col = [1      0      1     ;
       0.8500 0.3250 0.0980;
       0      0.4470 0.7410;
       0.4940 0.1840 0.5560;
       0      0      0     ];
LS = ["-", "-", "-", "-", "--"];
LW = [2, 3, 2, 2, 2];
% -
Leg = {'No Coding';
       'DEJMPS + [[9,3,3]]';
       '[[9,3,3]]';
       'DEJMPS';
       'DEJMPS (pre-[[9,3,3]])'};
pos = 'southwest';
% -
fig_tit = 'Single Link (Fidelity)';
fig_x = 'F_{in}';
fig_y = 'F_{out}';
% -
xrange = [0.815 1];
xtik = 0.5:0.01:1;
xlab = string(xtik);
ytik = 0:0.005:1;
ylab = string(ytik);
% -
for i = 1:length(ylab)
    if mod(i,2) == 0
        ylab(i) = '';
    end
end
% - 
yrange = [0.92 1];

