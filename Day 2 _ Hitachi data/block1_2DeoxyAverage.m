close all
data=csvread('DeoxyDataForBlock1_2_matlab.csv');
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

% Ploting the average during the periods for channel 12 and 14 which has
% the most fluctuation in the range of the session 8 to 30
figure
hold on

average_matrix12 = zeros(1, 101);
average_matrix14 = zeros(1, 101);

data_lp12=lpf(data(:,12),filttype,fs,fcut,filtlen);
data_lp14=lpf(data(:,14),filttype,fs,fcut,filtlen);

average_matrix12(1,:) = data_lp12(2324: 2324+100 );
average_matrix12(end +1,:) = data_lp12(2602: 2602+100 );%2602 2886
average_matrix12(end +1,:) = data_lp12(2886: 2886+100 );%2886 3170 
average_matrix12(end +1,:) = data_lp12(3170: 3170+100 );% 3170 3455
average_matrix12(end +1,:) = data_lp12(3455: 3455+100 );% 3455 3735 
average_matrix12(end +1,:) = data_lp12(3735: 3735+100 );% 3735 4032
average_matrix12(end +1,:) = data_lp12(4032: 4032+100 );% 4032 4306 
average_matrix12(end +1,:) = data_lp12(4306: 4306+100 );% 4306 4584
average_matrix12(end +1,:) = data_lp12(4584: 4584+100 );% 4584 4865 
average_matrix12(end +1,:) = data_lp12(4865: 4865+100 );% 4865 5139
average_matrix12(end +1,:) = data_lp12(5139: 5139+100 );% 5139 5421 
average_matrix12(end +1,:) = data_lp12(5421: 5421+100 );% 5421 5694
average_matrix12(end +1,:) = data_lp12(5694: 5694+100 );% 5694 5985 
average_matrix12(end +1,:) = data_lp12(5985: 5985+100 );% 5985 6267
average_matrix12(end +1,:) = data_lp12(6267: 6267+100 );% 6267 6555 
average_matrix12(end +1,:) = data_lp12(6555: 6555+100 );% 6555 6826
average_matrix12(end +1,:) = data_lp12(6826: 6826+100 );% 6826 7109 
average_matrix12(end +1,:) = data_lp12(7109: 7109+100 );% 7109 7379
average_matrix12(end +1,:) = data_lp12(7379: 7379+100 );% 7379 7662 
average_matrix12(end +1,:) = data_lp12(7662: 7662+100 );% 7662 7936
average_matrix12(end +1,:) = data_lp12(7936: 7936+100 );% 7936 8211 


average_matrix14(1,:) = data_lp14(2324: 2324+100 );
average_matrix14(end +1,:) = data_lp14(2602: 2602+100 );%2602 2886
average_matrix14(end +1,:) = data_lp14(2886: 2886+100 );%2886 3170 
average_matrix14(end +1,:) = data_lp14(3170: 3170+100 );% 3170 3455
average_matrix14(end +1,:) = data_lp14(3455: 3455+100 );% 3455 3735 
average_matrix14(end +1,:) = data_lp14(3735: 3735+100 );% 3735 4032
average_matrix14(end +1,:) = data_lp14(4032: 4032+100 );% 4032 4306 
average_matrix14(end +1,:) = data_lp14(4306: 4306+100 );% 4306 4584
average_matrix14(end +1,:) = data_lp14(4584: 4584+100 );% 4584 4865 
average_matrix14(end +1,:) = data_lp14(4865: 4865+100 );% 4865 5139
average_matrix14(end +1,:) = data_lp14(5139: 5139+100 );% 5139 5421 
average_matrix14(end +1,:) = data_lp14(5421: 5421+100 );% 5421 5694
average_matrix14(end +1,:) = data_lp14(5694: 5694+100 );% 5694 5985 
average_matrix14(end +1,:) = data_lp14(5985: 5985+100 );% 5985 6267
average_matrix14(end +1,:) = data_lp14(6267: 6267+100 );% 6267 6555 
average_matrix14(end +1,:) = data_lp14(6555: 6555+100 );% 6555 6826
average_matrix14(end +1,:) = data_lp14(6826: 6826+100 );% 6826 7109 
average_matrix14(end +1,:) = data_lp14(7109: 7109+100 );% 7109 7379
average_matrix14(end +1,:) = data_lp14(7379: 7379+100 );% 7379 7662 
average_matrix14(end +1,:) = data_lp14(7662: 7662+100 );% 7662 7936
average_matrix14(end +1,:) = data_lp14(7936: 7936+100 );% 7936 8211 


plot(mean(average_matrix12,1));
plot(mean(average_matrix14,1));

title('block1-2 deoxy 12 14 Average');

legend('Channel 12','Channel 14');

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





