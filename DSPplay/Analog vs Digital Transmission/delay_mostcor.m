function [delay] = delay_mostcor(s1,s2,distance)
%DELAY_MOSTCOR ���������ȳ��������һ������,����һ����
%   Ѱ��һ��delay�����������龡����������Ƴ̶ȣ����ص��п����Ǹ�������þ���ֵСһ��.���DelayӦ�������ڵڶ����ź���
delay = 0;
corr_distance_map = zeros(2,fix(length(s1)/distance));
len = length(s1);
for i = 1:fix(length(s1)/distance) - 1
   temp_delay = delay + distance * i;
    %-delay
   corr_distance_map(2 * i - 1,1) = -temp_delay;
   t1 = s1(1:len - temp_delay);
   t2 = s2(temp_delay + 1:len);
   corr_distance_map(2 * i - 1,2) = corr(t1,t2);
   if isnan(corr_distance_map(2 * i - 1,2))
       corr_distance_map(2 * i - 1,2) = 0;
   end
   %delay
   corr_distance_map(2 * i,1) = temp_delay;
   t1 = s1(temp_delay + 1:len);
   t2 = s2(1:len - temp_delay);
   corr_distance_map(2 * i,2) = corr(t1,t2);
   if isnan(corr_distance_map(2 * i,2))
       corr_distance_map(2 * i,2) = 0;
   end
end
[v index] = max(corr_distance_map(:,2));
delay = corr_distance_map(index,1);
end
