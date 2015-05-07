close all
data=csvread('Eh2.csv');
t=data(:,1);
t=t-t(1);
%from=find((round(t)==1));
%to=find((round(t)==100));
from = 1;
to = find((round(t)==554));

%size(t(from:to))
fs = 2;
filttype = 3; filtlen = 12; fcut = 0.14;

figure
hold on
for i=3:2:15
    data_lp=lpf(data(:,i),filttype,fs,fcut,filtlen);
    
    %plot(t(from:to),data(from:to,i))

    plot(t(from:to),data_lp(from:to))
    title(['oxy ' '1-' num2str(floor(i/2))])
end
legend('show')
hold off

figure
hold on
for i=15:2:33
    data_lp=lpf(data(:,i),filttype,fs,fcut,filtlen);
    
    %plot(t(from:to),data(from:to,i))
 
    plot(t(from:to),data_lp(from:to))
    title(['oxy ' num2str(floor(15/2)) '-16'])
end
legend('show')
hold off

figure
hold on
for i=2:2:8
    data_lp=lpf(data(:,i),filttype,fs,fcut,filtlen);
    
    plot(t(from:to),data(from:to,i))
  
    plot(t(from:to),data_lp(from:to))
    title(['deoxy ' '1-' num2str(floor((i/2)))])
end
legend('show')
hold off

figure
hold on
for i=10:2:16
    data_lp=lpf(data(:,i),filttype,fs,fcut,filtlen);
    
    %plot(t(from:to),data(from:to,i))
  
    plot(t(from:to),data_lp(from:to))
    title(['deoxy ' '4-' num2str(floor((i/2)))])
end
legend('show')
hold off

figure 
hold on 
for i=18:2:24
    data_lp=lpf(data(:,i),filttype,fs,fcut,filtlen);
    
    %plot(t(from:to),data(from:to,i))
  
    plot(t(from:to),data_lp(from:to))
    title(['deoxy ' '9-' num2str(floor((i/2)))])
end
legend('show')
hold off


figure 
hold on 
for i=26:2:33
    data_lp=lpf(data(:,i),filttype,fs,fcut,filtlen);
    
    %plot(t(from:to),data(from:to,i))
    
    plot(t(from:to),data_lp(from:to))
    title(['deoxy' '12-' num2str(floor((i/2)))])
end
legend('show')
hold off

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
