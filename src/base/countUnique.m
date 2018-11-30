function [sortedList, sortedCount] = countUnique(list)
% Count unique elements in a vector (cell array or numerical)
% Also sorts the unique elements in descending order
%
% USAGE:
%
%     [sortedList, sortedCount] = countUnique(list)
%
% INPUT:
%    list:           input vector
%
% OUTPUTS:
%    sortedList:     list with sorted elements
%    sortedCount:    number of elements
%
% .. Authors: Markus Herrgard 3/17/07

[uniqList, tmp, index] = unique(list);
% initialize
count = zeros(length(uniqList),1);

for i = 1:length(uniqList)
    count(i) = sum(index == i);
end

[sortedCount, sortedInd] = sort(count, 2, 'descend');

sortedList = uniqList(sortedInd);

sortedCount = columnVector(sortedCount);
end
