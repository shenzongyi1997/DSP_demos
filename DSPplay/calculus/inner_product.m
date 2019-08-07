function [result] = inner_product(signal)
%INNER_PRODUCT 输入一个函数
%   这个是给L2函数的内积，不是普通向量内积，给入的应该是在某一段上的平方可积函数
result = sum(signal.*signal)/length(signal);
end

