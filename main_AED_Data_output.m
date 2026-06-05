clc
clear
% -----------------Information
fprintf('Title: Adaptive Entanglement Distillation\n');
fprintf('Author: Sijie Cheng and Narayanan Rengaswamy\n');
fprintf('The authors are with the Department of Electrical and Computer Engineering, \nUniversity of Arizona, Tucson AZ 85721.\n'); 
fprintf('E-mail: { sijiecheng , narayananr}@arizona.edu\n');
fprintf('Date: June 4, 2026\n');
fprintf('\n');
% -----------------Initialization
set(0,'defaultfigurecolor','w');
AED_Check_Folder;
mode = 1;
n_fig = [3, 4, 7, 8, 9, 10, 11, 12, 13, 14, 15, 17, 18, 19];
n_tab = [2, 3, 4, 5];
accept = 0;
% -----------------Introduction
while accept == 0
if mode == 1
    fprintf('Please enter the figure number in our paper.\n');
    fprintf('The figures you can plot using this data-search program include:\n');
    fprintf('3, 4, 7, 8, 9, 10, 11, 12, 13, 14, 15, 17, 18, 19\n');
    fprintf('You can also type 0 to switch to table mode, or type -1 to quit the program.\n');
    fprintf('Please enter the figure number in our paper:\n');
    Fig = input('');
    if Fig == 0
        mode = 2;
        fprintf('\nSwitch to table mode.\n');
    elseif Fig == -1
        mode = 3;
    else
        if ismember(Fig, n_fig)
            accept = 1;
        else
            fprintf('\n');
        end
    end
elseif mode == 2
    fprintf('Please enter the table number in our paper.\n');
    fprintf('The tables you can plot using this data-search program include:\n');
    fprintf('2, 3, 4, 5\n');
    fprintf('Note: We will not show the table directly. Instead, we will show the plot with \nthe corresponding points from the table marked on it.\n');
    fprintf('You can also type 0 to switch to figure mode, or type -1 to quit the program.\n');
    fprintf('Please enter the table number in our paper:\n');
    Fig = input('');
    if Fig == 0
        mode = 1;
        fprintf('\nSwitch to figure mode.\n');
    elseif Fig == -1
        mode = 3;
    else
        if ismember(Fig, n_tab)
            accept = 1;
        else
            fprintf('\n');
        end
    end
elseif mode == 3
    accept = 1;
end
end
% ----------------- Output
if mode == 1
    AED_P3_plot_figure(Fig);
    fprintf('Plot completed.\n');
elseif mode == 2
    AED_P3_plot_table(Fig);
    fprintf('Plot completed.\n');
elseif mode == 3
    fprintf('The program has already quit.\n');
end