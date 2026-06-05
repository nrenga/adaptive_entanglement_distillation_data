function AED_P3_plot_figure(Fig)
% -------------- Get the information needed to prepare the plot.
[n_plot, DB_name] = AED_P3_plot_figure_info(Fig);
% -------------- main
for i = 1:n_plot
% i = 2;
% -------------- Get DB_record
FileName = DB_name(i);
FilePath = sprintf('./AED_Data_output/AED_P1_Database/%s.mat', FileName);
load(FilePath, 'DB_record');
% -------------- Get Settings
fun = str2func(DB_name(i));
[nl, col, ls, lw, Leg, pos, ftit, fx, fy, xr, xt, xl, yr, yt, yl] = fun();
% -------------- Plot
wtit1 = sprintf('AED: Fig. %d', Fig);
if n_plot>1
    wtit2 = [wtit1, ' (', char(96+i),')'];
else
    wtit2 = wtit1;
end

figure('Name', wtit2, 'NumberTitle', 'off');
hold on
for j = 1 : nl
    plot(DB_record(1,:), DB_record(j+1,:), 'Color', col(j,:), 'LineStyle', ls(j), ...
        'LineWidth', lw(j));
end
legend(Leg,'Location',pos);
%-
xlabel(fx);
xlim(xr);
xticks(xt);
xticklabels(xl);

%-
ylabel(fy);
ylim(yr);
yticks(yt);
yticklabels(yl);
if Fig == 9 || Fig == 18 || Fig == 19
    ytickformat('%0.2g');
end
title(ftit);
grid on
hold off
end
