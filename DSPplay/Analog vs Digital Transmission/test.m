[music, rate] = audioread("music.wav");

music = music(1 + rate * 0 : round(1 + rate * 2),:);
sound(music, rate);
sample_number = size(music,1);
total_time = sample_number / rate;
time_series = linspace(0, total_time, sample_number);
figure
plot(time_series, music);
title("两个声道波形")
figure
plot(time_series, music(:,1) - music(:,2))
title("差分")              

delay = delay_mostcor(music(:,1),music(:,2),1000);
disp(sprintf('延迟是%d',delay));

cor_time = (sample_number + 2 * abs(delay)) / rate;
cor_time_series = linspace(0, cor_time, sample_number + 2 * abs(delay));
left = music(:,1);
left = [zeros(abs(delay),1)' left' zeros(abs(delay),1)']';
right = music(:,2);
if delay > 0
    right = [zeros(abs(delay)*2,1)' right']';
end
if delay < 0 
    right = [right' zeros(abs(delay)*2)']';
end

figure
plot(cor_time_series, [left right]')
title("偏移之后的声波")

figure
plot(cor_time_series,(left-right)')
title("差分")

