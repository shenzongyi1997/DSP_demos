function [] = plot_lolli(x, signal, color)
%PLOT_LOLLI �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
for i = 1:length(signal)
    line([x(i),x(i)],[0,signal(i)], 'color', color)
end
end

