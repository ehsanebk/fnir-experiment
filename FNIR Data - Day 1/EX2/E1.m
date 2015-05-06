close all
data=csvread('Eh2.csv');
t=data(:,1);
t=t-t(1);
%from=find((round(t)==1));
%to=find((round(t)==100));
from = 1;
to = find((round(t)==554));




fs = 2;
filttype = 3; filtlen = 12; fcut = 0.14;


for i=3:2:10
    data_lp=lpf(data(:,i),filttype,fs,fcut,filtlen);
    figure
    plot(t(from:to),data(from:to,i))
    hold on
    plot(t(from:to),data_lp(from:to),'r')
    title(['oxy' num2str(i/2)])
end

for i=2:2:9
    data_lp=lpf(data(:,i),filttype,fs,fcut,filtlen);
    figure
    plot(t(from:to),data(from:to,i))
    hold on
    plot(t(from:to),data_lp(from:to),'r')
    title(['deoxy' (num2str(floor((i/2))))])
end
for i=21:2:33
    data_lp=lpf(data(:,i),filttype,fs,fcut,filtlen);
    figure
    plot(t(from:to),data(from:to,i))
    hold on
    plot(t(from:to),data_lp(from:to),'r')
    title(['oxy' num2str(i/2)])
end

for i=20:2:33
    data_lp=lpf(data(:,i),filttype,fs,fcut,filtlen);
    figure
    plot(t(from:to),data(from:to,i))
    hold on
    plot(t(from:to),data_lp(from:to),'r')
    title(['deoxy' (num2str(floor((i/2))))])
end

% 
% for i=2:2:33
%     data1_lp=lpf(data(:,i),filttype,fs,fcut,filtlen);
%     data2_lp=lpf(data(:,i+1),filttype,fs,fcut,filtlen);
%     data_lp=data1_lp+data2_lp;
%     figure
% 
%     plot(t(from:to),data_lp(from:to),'r')
%     title(['Blood Volume' num2str(i/2)])
% end
