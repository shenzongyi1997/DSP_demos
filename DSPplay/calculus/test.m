x = linspace(-1,1,1000);
y = x .* x;
figure
plot(x,y)
title('ԭ����')
a1 = sum(y)/length(x)
a2 = trapz(x,y)

