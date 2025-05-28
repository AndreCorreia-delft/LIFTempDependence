clearvars -except LIFSIM_path; format LONG G; format COMPACT;
close all; 
clc;

addpath(genpath(LIFSIM_path));
addpath(genpath(pwd));

sp = dir(fullfile(LIFSIM_path,"input-data\lines\*_lines*.mat"));
availableSpecies = cell(length(sp),1);
for i = 1: length(sp)
    s = split(sp(i).name,'_lines');
    availableSpecies{i} = s{1};
end
availableSpecies = unique(availableSpecies);
availableSpecies = string(availableSpecies);
