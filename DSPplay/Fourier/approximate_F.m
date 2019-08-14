x = linspace(-1,1,100);
y = zeros(1,100);
N = 50;
pi = 3.1415926;
temp = zeros(100,1);
for i = 0:N
    temp = sin((2.*i + 1).*pi.*x);
    y = y + temp./(2*i+1);
end
figure
plot(x,y)
title(["N" num2str(N)])