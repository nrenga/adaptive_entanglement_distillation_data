# adaptive_entanglement_distillation_data

Title: Adaptive Entanglement Distillation
Author: Sijie Cheng and Narayanan Rengaswamy
The authors are with the Department of Electrical and Computer Engineering, University of Arizona, Tucson AZ 85721.
E-mail: { sijiecheng , narayananr}@arizona.edu
Date: June 4, 2026

This file contains a data-search program. Although it does not show how the data were generated, it provides additional details for reproducing the figures and tables in our paper.

First, unzip the file. Then set the working directory to the folder Response_to_Reviewers. You should then see three items: main_AED_Data_output.m, AED_Check_Folder.m, README.txt, and the folder AED_Data_output.

You can directly run main_AED_Data_output.m. The program will ask you to input the figure number from our paper, and it will then generate the corresponding figure.

If you input 0, the program will enter the table mode. In this mode, we will not show the table directly. Instead, we will show the plot with the corresponding points from the table marked on it.

The corresponding points are calculated by the program after it loads the required data.

Each time the program is run, it generates one group of figures or tables. If a figure in our paper contains multiple subfigures, the program will generate all of the corresponding subfigures together after you input the figure number.