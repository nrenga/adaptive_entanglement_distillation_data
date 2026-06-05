function AED_Check_Folder
if exist('AED_P0_check_path', 'file') ~= 2
    addpath('AED_Data_output/');
    addpath('AED_Data_output/AED_P0_Check_Path/');
    addpath('AED_Data_output/AED_P1_Database/');
    addpath('AED_Data_output/AED_P2_Plot_Settings/');
    addpath('AED_Data_output/AED_P3_Plot_Scripts/');
end
AED_P0_check_path;