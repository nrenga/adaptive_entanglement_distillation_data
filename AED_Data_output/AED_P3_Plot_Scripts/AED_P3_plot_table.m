function AED_P3_plot_table(Fig)
% -------------- Get the information needed to prepare the plot.
[n_plot, DB_name] = AED_P3_plot_table_info(Fig);
% -------------- main
for i = 1:n_plot
% i = 1;
% -------------- Get DB_record
FileName = DB_name(i);
FilePath = sprintf('./AED_Data_output/AED_P1_Database/%s.mat', FileName);
load(FilePath, 'DB_record');
% -------------- Get Settings
fun = str2func(DB_name(i));
[nl, col, ls, lw, Leg, pos, ftit, fx, fy, xr, xt, xl, yr, yt, yl] = fun();
% -------------- Plot
wtit1 = sprintf('AED: Table. %d', Fig);
wtit2 = [wtit1, ' (', char(96+i),')'];
figure('Name', wtit2, 'NumberTitle', 'off');
hold on
for j = 1 : nl
    plot(DB_record(1,:), DB_record(j+1,:), 'Color', col(j,:), 'LineStyle', ls(j), ...
        'LineWidth', lw(j));
end
% Caiculate
if Fig == 2 || Fig == 3 || Fig == 4
    DBi = DB_record(1,:);
    DB5 = DB_record(5,:);
    DB7 = DB_record(6,:);
    % --
    f5 = @(x) interp1(DBi,DB5-DBi, x, "spline");
    f7 = @(x) interp1(DBi,DB7-DBi, x, "spline");
    r5 = fzero(f5, [DBi(8500), 0.999]);
    r7 = fzero(f7, [DBi(8500), 0.999]);
%----
plot([r5 r5], [0 r5], 'Color', [0.6353 0.0784 0.1843], 'LineStyle', "-.", 'LineWidth', 2);
plot([r7 r7], [0 r7], 'Color', [0.4784 0.8078 0.9490], 'LineStyle', "-.", 'LineWidth', 2);
Leg{nl+1} = num2str(r5);
Leg{nl+2} = num2str(r7);
elseif Fig == 5
    F_in = DB_record(1,:);
    DB_E = DB_record(2:5, :);
    [~, position] = max(DB_E, [], 1);
    pos_find = find(diff(position) ~= 0) + 1;
    F_SW = F_in(pos_find);
%----
plot([F_SW(2) F_SW(2)], [-0.03 DB_record(6,pos_find(2))], 'Color', [0.5736 0.4236 0.4975], 'LineStyle', "-.", 'LineWidth', 2);
plot([F_SW(3) F_SW(3)], [-0.03 DB_record(6,pos_find(3))], 'Color', [0.5405 0.6002 0.5458], 'LineStyle', "-.", 'LineWidth', 2);
plot([F_SW(4) F_SW(4)], [-0.03 DB_record(6,pos_find(4))], 'Color', [0.7296 0.6901 0.0000], 'LineStyle', "-.", 'LineWidth', 2);
Leg{nl+1} = num2str(F_SW(2), '%.4f');
Leg{nl+2} = num2str(F_SW(3), '%.4f');
Leg{nl+3} = num2str(F_SW(4), '%.4f');
end
% -
legend(Leg,'Location',pos);
%-
xlabel(fx);
xlim(xr);
xticks(xt);
xticklabels(xl);
%-
if Fig == 2 || Fig == 3 || Fig == 4
ylabel(fy);
ylim(yr);
yticks(yt);
yticklabels(yl);
elseif Fig == 5
    ylabel(fy);
    ylim(yr);
end
title(ftit);
grid on
hold off
end
