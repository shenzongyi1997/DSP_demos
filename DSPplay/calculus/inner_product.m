function [result] = inner_product(signal)
%INNER_PRODUCT ����һ������
%   ����Ǹ�L2�������ڻ���������ͨ�����ڻ��������Ӧ������ĳһ���ϵ�ƽ���ɻ�����
result = sum(signal.*signal)/length(signal);
end

