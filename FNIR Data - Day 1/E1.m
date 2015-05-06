close all
data=csvread('Eh2.csv');
t=data(:,1);
t=t-t(1);
fr=find((round(t)==1));
to=find((round(t)==100));

fs = 2;
filttype = 3; filtlen = 12; fcut = 0.14;


for i=1:2:33
    data_lp=lpf(data(:,i),filttype,fs,fcut,filtlen);
    figure
    plot(t(1:222),data(1:222,i))
    hold on
    plot(t(fr:to),data_lp(fr:to),'r')
    title(['oxy' num2str(i/2)])
end

for i=3:2:33
    data_lp=lpf(data(:,i),filttype,fs,fcut,filtlen);
    figure
    plot(t(fr:to),data(fr:to,i))
    hold on
    plot(t(fr:to),data_lp(fr:to),'r')
    title(['deoxy' (num2str(floor((i/2))))])
end

for i=2:2:33
    data1_lp=lpf(data(:,i),filttype,fs,fcut,filtlen);
    data2_lp=lpf(data(:,i+1),filttype,fs,fcut,filtlen);
    data_lp=data1_lp+data2_lp;
    figure

    plot(t(fr:to),data_lp(fr:to),'r')
    title(['Blood Volume' num2str(i/2)])
end
