classdef stairs
    properties (Constant)
        age = transpose(csvread('D:\Documents\MATLAB\injuryData.csv',1,0,[1 0 101 0]));
        chance = transpose(csvread('D:\Documents\MATLAB\injuryData.csv',1,1,[1 1 101 1]));
    end
end