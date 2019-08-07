clear
%正弦信号
%signal = zeros(1, 1000);
% pi = 3.14;
% frequency = (2 * pi)/length(signal) ;
% for i = 1:length(signal)
%    signal(i) = sin(frequency * i );
% end
% x = linspace(-pi, pi, length(signal));

%一次函数
% N = 10000 %samples
% signal = linspace(-1,1,N);
% x = linspace(-1,1,N);

%平的
signal = ones(1,1000)./2;
x = linspace(-1,1,1000);

figure
plot(x,signal)
title("原始信号")

figure
plot(x,signal.*signal)
title("square")

figure
plot(x,signal)
plot_lolli(x,signal.*signal,'r')
ylim([-2,2])

inner_product(signal)