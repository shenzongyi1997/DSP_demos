function [] = plot_lolli(x, signal, color)
%PLOT_LOLLI 此处显示有关此函数的摘要
%   此处显示详细说明
for i = 1:length(signal)
    line([x(i),x(i)],[0,signal(i)], 'color', color)
end
end

