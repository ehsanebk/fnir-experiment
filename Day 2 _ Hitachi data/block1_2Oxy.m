%close all
data=csvread('OxyDataForBlock1_2_matlab.csv');
% t=round(data(:,1)/1000);
t= data(:,25);
% t=t-t(1);
%from=find((round(t)==1));
%to=find((round(t)==100));
from = 1;
% to = find((round(t)==554));
to = size(t);

%size(t(from:to))
fs = 2;
filttype = 3; filtlen = 12; fcut = 0.14;

% Plot for channel 12 14
figure
hold on
data_lp=lpf(data(:,12),filttype,fs,fcut,filtlen);
%plot(t(from:to),data(from:to,i))\
plot(t(from:to),data_lp(from:to))
data_lp=lpf(data(:,14),filttype,fs,fcut,filtlen);
plot(t(from:to),data_lp(from:to))
title('block1-2 deoxy 12 14');
legend('Channel 12','Channel 14');
% putting lines for the times that the probe is happening
line([15088 15088] , [-0.8 0.8]);line([41860 41860] , [-0.8 0.8]);
line([69183 69183] , [-0.8 0.8]);line([96598 96598] , [-0.8 0.8]);
line([123973 123973] , [-0.8 0.8]);line([150741 150741] , [-0.8 0.8]);
line([177659 177659] , [-0.8 0.8]);line([204648 204648] , [-0.8 0.8]);
line([232480 232480] , [-0.8 0.8]);line([260275 260275] , [-0.8 0.8]);
line([288666 288666] , [-0.8 0.8]);line([317030 317030] , [-0.8 0.8]);
line([345596 345596] , [-0.8 0.8]);line([373547 373547] , [-0.8 0.8]);
line([403247 403247] , [-0.8 0.8]);line([430604 430604] , [-0.8 0.8]);
line([458411 458411] , [-0.8 0.8]);line([486591 486591] , [-0.8 0.8]);
line([513917 513917] , [-0.8 0.8]);line([542156 542156] , [-0.8 0.8]);
line([569433 569433] , [-0.8 0.8]);line([598502 598502] , [-0.8 0.8]);
line([626780 626780] , [-0.8 0.8]);line([655515 655515] , [-0.8 0.8]);
line([682656 682656] , [-0.8 0.8]);line([710980 710980] , [-0.8 0.8]);
line([737929 737929] , [-0.8 0.8]);line([766292 766292] , [-0.8 0.8]);
line([793688 793688] , [-0.8 0.8]);line([821125 821125] , [-0.8 0.8]);
hold off

% Plot for channel 11 13
figure
hold on
data_lp=lpf(data(:,11),filttype,fs,fcut,filtlen);
%plot(t(from:to),data(from:to,i))\
plot(t(from:to),data_lp(from:to))
data_lp=lpf(data(:,13),filttype,fs,fcut,filtlen);
plot(t(from:to),data_lp(from:to))
title('block1-2 deoxy 11 13');
legend('Channel 11','Channel 13');
% putting lines for the times that the probe is happening
line([15088 15088] , [-0.8 0.8]);line([41860 41860] , [-0.8 0.8]);
line([69183 69183] , [-0.8 0.8]);line([96598 96598] , [-0.8 0.8]);
line([123973 123973] , [-0.8 0.8]);line([150741 150741] , [-0.8 0.8]);
line([177659 177659] , [-0.8 0.8]);line([204648 204648] , [-0.8 0.8]);
line([232480 232480] , [-0.8 0.8]);line([260275 260275] , [-0.8 0.8]);
line([288666 288666] , [-0.8 0.8]);line([317030 317030] , [-0.8 0.8]);
line([345596 345596] , [-0.8 0.8]);line([373547 373547] , [-0.8 0.8]);
line([403247 403247] , [-0.8 0.8]);line([430604 430604] , [-0.8 0.8]);
line([458411 458411] , [-0.8 0.8]);line([486591 486591] , [-0.8 0.8]);
line([513917 513917] , [-0.8 0.8]);line([542156 542156] , [-0.8 0.8]);
line([569433 569433] , [-0.8 0.8]);line([598502 598502] , [-0.8 0.8]);
line([626780 626780] , [-0.8 0.8]);line([655515 655515] , [-0.8 0.8]);
line([682656 682656] , [-0.8 0.8]);line([710980 710980] , [-0.8 0.8]);
line([737929 737929] , [-0.8 0.8]);line([766292 766292] , [-0.8 0.8]);
line([793688 793688] , [-0.8 0.8]);line([821125 821125] , [-0.8 0.8]);
hold off

% Plot for channel 10 17
figure
hold on
data_lp=lpf(data(:,10),filttype,fs,fcut,filtlen);
%plot(t(from:to),data(from:to,i))\
plot(t(from:to),data_lp(from:to))
data_lp=lpf(data(:,17),filttype,fs,fcut,filtlen);
plot(t(from:to),data_lp(from:to))
title('block1-2 deoxy 10 17');
legend('Channel 10','Channel 17');
% putting lines for the times that the probe is happening
line([15088 15088] , [-0.8 0.8]);line([41860 41860] , [-0.8 0.8]);
line([69183 69183] , [-0.8 0.8]);line([96598 96598] , [-0.8 0.8]);
line([123973 123973] , [-0.8 0.8]);line([150741 150741] , [-0.8 0.8]);
line([177659 177659] , [-0.8 0.8]);line([204648 204648] , [-0.8 0.8]);
line([232480 232480] , [-0.8 0.8]);line([260275 260275] , [-0.8 0.8]);
line([288666 288666] , [-0.8 0.8]);line([317030 317030] , [-0.8 0.8]);
line([345596 345596] , [-0.8 0.8]);line([373547 373547] , [-0.8 0.8]);
line([403247 403247] , [-0.8 0.8]);line([430604 430604] , [-0.8 0.8]);
line([458411 458411] , [-0.8 0.8]);line([486591 486591] , [-0.8 0.8]);
line([513917 513917] , [-0.8 0.8]);line([542156 542156] , [-0.8 0.8]);
line([569433 569433] , [-0.8 0.8]);line([598502 598502] , [-0.8 0.8]);
line([626780 626780] , [-0.8 0.8]);line([655515 655515] , [-0.8 0.8]);
line([682656 682656] , [-0.8 0.8]);line([710980 710980] , [-0.8 0.8]);
line([737929 737929] , [-0.8 0.8]);line([766292 766292] , [-0.8 0.8]);
line([793688 793688] , [-0.8 0.8]);line([821125 821125] , [-0.8 0.8]);
hold off

% Plot for channel 9 16
figure
hold on
data_lp=lpf(data(:,9),filttype,fs,fcut,filtlen);
%plot(t(from:to),data(from:to,i))\
plot(t(from:to),data_lp(from:to))
data_lp=lpf(data(:,16),filttype,fs,fcut,filtlen);
plot(t(from:to),data_lp(from:to))
title('block1-2 deoxy 9 16');
legend('Channel 9','Channel 16');
% putting lines for the times that the probe is happening
line([15088 15088] , [-0.8 0.8]);line([41860 41860] , [-0.8 0.8]);
line([69183 69183] , [-0.8 0.8]);line([96598 96598] , [-0.8 0.8]);
line([123973 123973] , [-0.8 0.8]);line([150741 150741] , [-0.8 0.8]);
line([177659 177659] , [-0.8 0.8]);line([204648 204648] , [-0.8 0.8]);
line([232480 232480] , [-0.8 0.8]);line([260275 260275] , [-0.8 0.8]);
line([288666 288666] , [-0.8 0.8]);line([317030 317030] , [-0.8 0.8]);
line([345596 345596] , [-0.8 0.8]);line([373547 373547] , [-0.8 0.8]);
line([403247 403247] , [-0.8 0.8]);line([430604 430604] , [-0.8 0.8]);
line([458411 458411] , [-0.8 0.8]);line([486591 486591] , [-0.8 0.8]);
line([513917 513917] , [-0.8 0.8]);line([542156 542156] , [-0.8 0.8]);
line([569433 569433] , [-0.8 0.8]);line([598502 598502] , [-0.8 0.8]);
line([626780 626780] , [-0.8 0.8]);line([655515 655515] , [-0.8 0.8]);
line([682656 682656] , [-0.8 0.8]);line([710980 710980] , [-0.8 0.8]);
line([737929 737929] , [-0.8 0.8]);line([766292 766292] , [-0.8 0.8]);
line([793688 793688] , [-0.8 0.8]);line([821125 821125] , [-0.8 0.8]);
hold off

% Plot for channel 8 15
figure
hold on
data_lp=lpf(data(:,8),filttype,fs,fcut,filtlen);
%plot(t(from:to),data(from:to,i))\
plot(t(from:to),data_lp(from:to))
data_lp=lpf(data(:,15),filttype,fs,fcut,filtlen);
plot(t(from:to),data_lp(from:to))
title('block1-2 deoxy 8 15');
legend('Channel 8','Channel 15');
% putting lines for the times that the probe is happening
line([15088 15088] , [-0.8 0.8]);line([41860 41860] , [-0.8 0.8]);
line([69183 69183] , [-0.8 0.8]);line([96598 96598] , [-0.8 0.8]);
line([123973 123973] , [-0.8 0.8]);line([150741 150741] , [-0.8 0.8]);
line([177659 177659] , [-0.8 0.8]);line([204648 204648] , [-0.8 0.8]);
line([232480 232480] , [-0.8 0.8]);line([260275 260275] , [-0.8 0.8]);
line([288666 288666] , [-0.8 0.8]);line([317030 317030] , [-0.8 0.8]);
line([345596 345596] , [-0.8 0.8]);line([373547 373547] , [-0.8 0.8]);
line([403247 403247] , [-0.8 0.8]);line([430604 430604] , [-0.8 0.8]);
line([458411 458411] , [-0.8 0.8]);line([486591 486591] , [-0.8 0.8]);
line([513917 513917] , [-0.8 0.8]);line([542156 542156] , [-0.8 0.8]);
line([569433 569433] , [-0.8 0.8]);line([598502 598502] , [-0.8 0.8]);
line([626780 626780] , [-0.8 0.8]);line([655515 655515] , [-0.8 0.8]);
line([682656 682656] , [-0.8 0.8]);line([710980 710980] , [-0.8 0.8]);
line([737929 737929] , [-0.8 0.8]);line([766292 766292] , [-0.8 0.8]);
line([793688 793688] , [-0.8 0.8]);line([821125 821125] , [-0.8 0.8]);
hold off

% Plot for channel 6 7 18 19
figure
hold on
data_lp=lpf(data(:,6),filttype,fs,fcut,filtlen);
plot(t(from:to),data_lp(from:to));
data_lp=lpf(data(:,7),filttype,fs,fcut,filtlen);
plot(t(from:to),data_lp(from:to));
data_lp=lpf(data(:,18),filttype,fs,fcut,filtlen);
plot(t(from:to),data_lp(from:to))
data_lp=lpf(data(:,19),filttype,fs,fcut,filtlen);
plot(t(from:to),data_lp(from:to))
title('block1-2 deoxy 6 7 18 19');
legend('Channel 6','Channel 7', 'Channel 18','Channel 19');
% putting lines for the times that the probe is happening
line([15088 15088] , [-0.8 0.8]);line([41860 41860] , [-0.8 0.8]);
line([69183 69183] , [-0.8 0.8]);line([96598 96598] , [-0.8 0.8]);
line([123973 123973] , [-0.8 0.8]);line([150741 150741] , [-0.8 0.8]);
line([177659 177659] , [-0.8 0.8]);line([204648 204648] , [-0.8 0.8]);
line([232480 232480] , [-0.8 0.8]);line([260275 260275] , [-0.8 0.8]);
line([288666 288666] , [-0.8 0.8]);line([317030 317030] , [-0.8 0.8]);
line([345596 345596] , [-0.8 0.8]);line([373547 373547] , [-0.8 0.8]);
line([403247 403247] , [-0.8 0.8]);line([430604 430604] , [-0.8 0.8]);
line([458411 458411] , [-0.8 0.8]);line([486591 486591] , [-0.8 0.8]);
line([513917 513917] , [-0.8 0.8]);line([542156 542156] , [-0.8 0.8]);
line([569433 569433] , [-0.8 0.8]);line([598502 598502] , [-0.8 0.8]);
line([626780 626780] , [-0.8 0.8]);line([655515 655515] , [-0.8 0.8]);
line([682656 682656] , [-0.8 0.8]);line([710980 710980] , [-0.8 0.8]);
line([737929 737929] , [-0.8 0.8]);line([766292 766292] , [-0.8 0.8]);
line([793688 793688] , [-0.8 0.8]);line([821125 821125] , [-0.8 0.8]);
hold off


% Plot for channel 2 5 22 24
figure
hold on
data_lp=lpf(data(:,2),filttype,fs,fcut,filtlen);
plot(t(from:to),data_lp(from:to))
data_lp=lpf(data(:,5),filttype,fs,fcut,filtlen);
plot(t(from:to),data_lp(from:to))
data_lp=lpf(data(:,22),filttype,fs,fcut,filtlen);
plot(t(from:to),data_lp(from:to))
data_lp=lpf(data(:,24),filttype,fs,fcut,filtlen);
plot(t(from:to),data_lp(from:to))
title('block1-2 deoxy 2 5 22 24');
legend('Channel 2','Channel 5','Channel 22','Channel 24');
% putting lines for the times that the probe is happening
line([15088 15088] , [-0.8 0.8]);line([41860 41860] , [-0.8 0.8]);
line([69183 69183] , [-0.8 0.8]);line([96598 96598] , [-0.8 0.8]);
line([123973 123973] , [-0.8 0.8]);line([150741 150741] , [-0.8 0.8]);
line([177659 177659] , [-0.8 0.8]);line([204648 204648] , [-0.8 0.8]);
line([232480 232480] , [-0.8 0.8]);line([260275 260275] , [-0.8 0.8]);
line([288666 288666] , [-0.8 0.8]);line([317030 317030] , [-0.8 0.8]);
line([345596 345596] , [-0.8 0.8]);line([373547 373547] , [-0.8 0.8]);
line([403247 403247] , [-0.8 0.8]);line([430604 430604] , [-0.8 0.8]);
line([458411 458411] , [-0.8 0.8]);line([486591 486591] , [-0.8 0.8]);
line([513917 513917] , [-0.8 0.8]);line([542156 542156] , [-0.8 0.8]);
line([569433 569433] , [-0.8 0.8]);line([598502 598502] , [-0.8 0.8]);
line([626780 626780] , [-0.8 0.8]);line([655515 655515] , [-0.8 0.8]);
line([682656 682656] , [-0.8 0.8]);line([710980 710980] , [-0.8 0.8]);
line([737929 737929] , [-0.8 0.8]);line([766292 766292] , [-0.8 0.8]);
line([793688 793688] , [-0.8 0.8]);line([821125 821125] , [-0.8 0.8]);
hold off


% Plot for channel 1 3 4 20 21 23
figure
hold on
data_lp=lpf(data(:,1),filttype,fs,fcut,filtlen);
plot(t(from:to),data_lp(from:to))
data_lp=lpf(data(:,3),filttype,fs,fcut,filtlen);
plot(t(from:to),data_lp(from:to))
data_lp=lpf(data(:,4),filttype,fs,fcut,filtlen);
plot(t(from:to),data_lp(from:to))
data_lp=lpf(data(:,20),filttype,fs,fcut,filtlen);
plot(t(from:to),data_lp(from:to))
data_lp=lpf(data(:,21),filttype,fs,fcut,filtlen);
plot(t(from:to),data_lp(from:to))
data_lp=lpf(data(:,23),filttype,fs,fcut,filtlen);
plot(t(from:to),data_lp(from:to))

title('block1-2 deoxy 1 3 4 20 21 23');
legend('Channel 1','Channel 3', 'Channel 4','Channel 20','Channel 21','Channel 23');

% putting lines for the times that the probe is happening
line([15088 15088] , [-0.8 0.8]);line([41860 41860] , [-0.8 0.8]);
line([69183 69183] , [-0.8 0.8]);line([96598 96598] , [-0.8 0.8]);
line([123973 123973] , [-0.8 0.8]);line([150741 150741] , [-0.8 0.8]);
line([177659 177659] , [-0.8 0.8]);line([204648 204648] , [-0.8 0.8]);
line([232480 232480] , [-0.8 0.8]);line([260275 260275] , [-0.8 0.8]);
line([288666 288666] , [-0.8 0.8]);line([317030 317030] , [-0.8 0.8]);
line([345596 345596] , [-0.8 0.8]);line([373547 373547] , [-0.8 0.8]);
line([403247 403247] , [-0.8 0.8]);line([430604 430604] , [-0.8 0.8]);
line([458411 458411] , [-0.8 0.8]);line([486591 486591] , [-0.8 0.8]);
line([513917 513917] , [-0.8 0.8]);line([542156 542156] , [-0.8 0.8]);
line([569433 569433] , [-0.8 0.8]);line([598502 598502] , [-0.8 0.8]);
line([626780 626780] , [-0.8 0.8]);line([655515 655515] , [-0.8 0.8]);
line([682656 682656] , [-0.8 0.8]);line([710980 710980] , [-0.8 0.8]);
line([737929 737929] , [-0.8 0.8]);line([766292 766292] , [-0.8 0.8]);
line([793688 793688] , [-0.8 0.8]);line([821125 821125] , [-0.8 0.8]);
hold off
