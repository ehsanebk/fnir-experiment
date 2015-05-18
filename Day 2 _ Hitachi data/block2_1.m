close all
data=csvread('dataforblock2_1_matlab.csv');
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
title('deoxy 12 14');
legend('Channel 12','Channel 14');
% putting lines for the times that the probe is happening
line([15086 15086] , [-0.6 0.6]);line([42214 42214] , [-0.6 0.6]);
line([69574 69574] , [-0.6 0.6]);line([98221 98221] , [-0.6 0.6]);
line([127629 127629] , [-0.6 0.6]);line([154561 154561] , [-0.6 0.6]);
line([183243 183243] , [-0.6 0.6]);line([210444 210444] , [-0.6 0.6]);
line([240413 240413] , [-0.6 0.6]);line([268380 268380] , [-0.6 0.6]);
line([296985 296985] , [-0.6 0.6]);line([325143 325143] , [-0.6 0.6]);
line([352911 352911] , [-0.6 0.6]);line([381686 381686] , [-0.6 0.6]);
line([411460 411460] , [-0.6 0.6]);line([438511 438511] , [-0.6 0.6]);
line([466166 466166] , [-0.6 0.6]);line([494425 494425] , [-0.6 0.6]);
line([522031 522031] , [-0.6 0.6]);line([551301 551301] , [-0.6 0.6]);
line([579793 579793] , [-0.6 0.6]);line([607126 607126] , [-0.6 0.6]);
line([635453 635453] , [-0.6 0.6]);line([662795 662795] , [-0.6 0.6]);
line([689657 689657] , [-0.6 0.6]);line([719054 719054] , [-0.6 0.6]);
line([746215 746215] , [-0.6 0.6]);line([775287 775287] , [-0.6 0.6]);
line([802747 802747] , [-0.6 0.6]);line([830860 830860] , [-0.6 0.6]);
hold off

% Plot for channel 11 13
figure
hold on
data_lp=lpf(data(:,11),filttype,fs,fcut,filtlen);
%plot(t(from:to),data(from:to,i))\
plot(t(from:to),data_lp(from:to))
data_lp=lpf(data(:,13),filttype,fs,fcut,filtlen);
plot(t(from:to),data_lp(from:to))
title('deoxy 11 13');
legend('Channel 11','Channel 13');
% putting lines for the times that the probe is happening
line([15086 15086] , [-0.6 0.6]);line([42214 42214] , [-0.6 0.6]);
line([69574 69574] , [-0.6 0.6]);line([98221 98221] , [-0.6 0.6]);
line([127629 127629] , [-0.6 0.6]);line([154561 154561] , [-0.6 0.6]);
line([183243 183243] , [-0.6 0.6]);line([210444 210444] , [-0.6 0.6]);
line([240413 240413] , [-0.6 0.6]);line([268380 268380] , [-0.6 0.6]);
line([296985 296985] , [-0.6 0.6]);line([325143 325143] , [-0.6 0.6]);
line([352911 352911] , [-0.6 0.6]);line([381686 381686] , [-0.6 0.6]);
line([411460 411460] , [-0.6 0.6]);line([438511 438511] , [-0.6 0.6]);
line([466166 466166] , [-0.6 0.6]);line([494425 494425] , [-0.6 0.6]);
line([522031 522031] , [-0.6 0.6]);line([551301 551301] , [-0.6 0.6]);
line([579793 579793] , [-0.6 0.6]);line([607126 607126] , [-0.6 0.6]);
line([635453 635453] , [-0.6 0.6]);line([662795 662795] , [-0.6 0.6]);
line([689657 689657] , [-0.6 0.6]);line([719054 719054] , [-0.6 0.6]);
line([746215 746215] , [-0.6 0.6]);line([775287 775287] , [-0.6 0.6]);
line([802747 802747] , [-0.6 0.6]);line([830860 830860] , [-0.6 0.6]);
hold off

% Plot for channel 10 17
figure
hold on
data_lp=lpf(data(:,10),filttype,fs,fcut,filtlen);
%plot(t(from:to),data(from:to,i))\
plot(t(from:to),data_lp(from:to))
data_lp=lpf(data(:,17),filttype,fs,fcut,filtlen);
plot(t(from:to),data_lp(from:to))
title('deoxy 10 17');
legend('Channel 10','Channel 17');
% putting lines for the times that the probe is happening
line([15086 15086] , [-0.6 0.6]);line([42214 42214] , [-0.6 0.6]);
line([69574 69574] , [-0.6 0.6]);line([98221 98221] , [-0.6 0.6]);
line([127629 127629] , [-0.6 0.6]);line([154561 154561] , [-0.6 0.6]);
line([183243 183243] , [-0.6 0.6]);line([210444 210444] , [-0.6 0.6]);
line([240413 240413] , [-0.6 0.6]);line([268380 268380] , [-0.6 0.6]);
line([296985 296985] , [-0.6 0.6]);line([325143 325143] , [-0.6 0.6]);
line([352911 352911] , [-0.6 0.6]);line([381686 381686] , [-0.6 0.6]);
line([411460 411460] , [-0.6 0.6]);line([438511 438511] , [-0.6 0.6]);
line([466166 466166] , [-0.6 0.6]);line([494425 494425] , [-0.6 0.6]);
line([522031 522031] , [-0.6 0.6]);line([551301 551301] , [-0.6 0.6]);
line([579793 579793] , [-0.6 0.6]);line([607126 607126] , [-0.6 0.6]);
line([635453 635453] , [-0.6 0.6]);line([662795 662795] , [-0.6 0.6]);
line([689657 689657] , [-0.6 0.6]);line([719054 719054] , [-0.6 0.6]);
line([746215 746215] , [-0.6 0.6]);line([775287 775287] , [-0.6 0.6]);
line([802747 802747] , [-0.6 0.6]);line([830860 830860] , [-0.6 0.6]);
hold off

% Plot for channel 9 16
figure
hold on
data_lp=lpf(data(:,9),filttype,fs,fcut,filtlen);
%plot(t(from:to),data(from:to,i))\
plot(t(from:to),data_lp(from:to))
data_lp=lpf(data(:,16),filttype,fs,fcut,filtlen);
plot(t(from:to),data_lp(from:to))
title('deoxy 9 16');
legend('Channel 9','Channel 16');
% putting lines for the times that the probe is happening
line([15086 15086] , [-0.6 0.6]);line([42214 42214] , [-0.6 0.6]);
line([69574 69574] , [-0.6 0.6]);line([98221 98221] , [-0.6 0.6]);
line([127629 127629] , [-0.6 0.6]);line([154561 154561] , [-0.6 0.6]);
line([183243 183243] , [-0.6 0.6]);line([210444 210444] , [-0.6 0.6]);
line([240413 240413] , [-0.6 0.6]);line([268380 268380] , [-0.6 0.6]);
line([296985 296985] , [-0.6 0.6]);line([325143 325143] , [-0.6 0.6]);
line([352911 352911] , [-0.6 0.6]);line([381686 381686] , [-0.6 0.6]);
line([411460 411460] , [-0.6 0.6]);line([438511 438511] , [-0.6 0.6]);
line([466166 466166] , [-0.6 0.6]);line([494425 494425] , [-0.6 0.6]);
line([522031 522031] , [-0.6 0.6]);line([551301 551301] , [-0.6 0.6]);
line([579793 579793] , [-0.6 0.6]);line([607126 607126] , [-0.6 0.6]);
line([635453 635453] , [-0.6 0.6]);line([662795 662795] , [-0.6 0.6]);
line([689657 689657] , [-0.6 0.6]);line([719054 719054] , [-0.6 0.6]);
line([746215 746215] , [-0.6 0.6]);line([775287 775287] , [-0.6 0.6]);
line([802747 802747] , [-0.6 0.6]);line([830860 830860] , [-0.6 0.6]);
hold off

% Plot for channel 8 15
figure
hold on
data_lp=lpf(data(:,8),filttype,fs,fcut,filtlen);
%plot(t(from:to),data(from:to,i))\
plot(t(from:to),data_lp(from:to))
data_lp=lpf(data(:,15),filttype,fs,fcut,filtlen);
plot(t(from:to),data_lp(from:to))
title('deoxy 8 15');
legend('Channel 8','Channel 15');
% putting lines for the times that the probe is happening
line([15086 15086] , [-0.6 0.6]);line([42214 42214] , [-0.6 0.6]);
line([69574 69574] , [-0.6 0.6]);line([98221 98221] , [-0.6 0.6]);
line([127629 127629] , [-0.6 0.6]);line([154561 154561] , [-0.6 0.6]);
line([183243 183243] , [-0.6 0.6]);line([210444 210444] , [-0.6 0.6]);
line([240413 240413] , [-0.6 0.6]);line([268380 268380] , [-0.6 0.6]);
line([296985 296985] , [-0.6 0.6]);line([325143 325143] , [-0.6 0.6]);
line([352911 352911] , [-0.6 0.6]);line([381686 381686] , [-0.6 0.6]);
line([411460 411460] , [-0.6 0.6]);line([438511 438511] , [-0.6 0.6]);
line([466166 466166] , [-0.6 0.6]);line([494425 494425] , [-0.6 0.6]);
line([522031 522031] , [-0.6 0.6]);line([551301 551301] , [-0.6 0.6]);
line([579793 579793] , [-0.6 0.6]);line([607126 607126] , [-0.6 0.6]);
line([635453 635453] , [-0.6 0.6]);line([662795 662795] , [-0.6 0.6]);
line([689657 689657] , [-0.6 0.6]);line([719054 719054] , [-0.6 0.6]);
line([746215 746215] , [-0.6 0.6]);line([775287 775287] , [-0.6 0.6]);
line([802747 802747] , [-0.6 0.6]);line([830860 830860] , [-0.6 0.6]);
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
title('deoxy 6 7 18 19');
legend('Channel 6','Channel 7', 'Channel 18','Channel 19');
% putting lines for the times that the probe is happening
line([15086 15086] , [-0.6 0.6]);line([42214 42214] , [-0.6 0.6]);
line([69574 69574] , [-0.6 0.6]);line([98221 98221] , [-0.6 0.6]);
line([127629 127629] , [-0.6 0.6]);line([154561 154561] , [-0.6 0.6]);
line([183243 183243] , [-0.6 0.6]);line([210444 210444] , [-0.6 0.6]);
line([240413 240413] , [-0.6 0.6]);line([268380 268380] , [-0.6 0.6]);
line([296985 296985] , [-0.6 0.6]);line([325143 325143] , [-0.6 0.6]);
line([352911 352911] , [-0.6 0.6]);line([381686 381686] , [-0.6 0.6]);
line([411460 411460] , [-0.6 0.6]);line([438511 438511] , [-0.6 0.6]);
line([466166 466166] , [-0.6 0.6]);line([494425 494425] , [-0.6 0.6]);
line([522031 522031] , [-0.6 0.6]);line([551301 551301] , [-0.6 0.6]);
line([579793 579793] , [-0.6 0.6]);line([607126 607126] , [-0.6 0.6]);
line([635453 635453] , [-0.6 0.6]);line([662795 662795] , [-0.6 0.6]);
line([689657 689657] , [-0.6 0.6]);line([719054 719054] , [-0.6 0.6]);
line([746215 746215] , [-0.6 0.6]);line([775287 775287] , [-0.6 0.6]);
line([802747 802747] , [-0.6 0.6]);line([830860 830860] , [-0.6 0.6]);
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
title('deoxy 2 5 22 24');
legend('Channel 2','Channel 5','Channel 22','Channel 24');
% putting lines for the times that the probe is happening
line([15086 15086] , [-0.6 0.6]);line([42214 42214] , [-0.6 0.6]);
line([69574 69574] , [-0.6 0.6]);line([98221 98221] , [-0.6 0.6]);
line([127629 127629] , [-0.6 0.6]);line([154561 154561] , [-0.6 0.6]);
line([183243 183243] , [-0.6 0.6]);line([210444 210444] , [-0.6 0.6]);
line([240413 240413] , [-0.6 0.6]);line([268380 268380] , [-0.6 0.6]);
line([296985 296985] , [-0.6 0.6]);line([325143 325143] , [-0.6 0.6]);
line([352911 352911] , [-0.6 0.6]);line([381686 381686] , [-0.6 0.6]);
line([411460 411460] , [-0.6 0.6]);line([438511 438511] , [-0.6 0.6]);
line([466166 466166] , [-0.6 0.6]);line([494425 494425] , [-0.6 0.6]);
line([522031 522031] , [-0.6 0.6]);line([551301 551301] , [-0.6 0.6]);
line([579793 579793] , [-0.6 0.6]);line([607126 607126] , [-0.6 0.6]);
line([635453 635453] , [-0.6 0.6]);line([662795 662795] , [-0.6 0.6]);
line([689657 689657] , [-0.6 0.6]);line([719054 719054] , [-0.6 0.6]);
line([746215 746215] , [-0.6 0.6]);line([775287 775287] , [-0.6 0.6]);
line([802747 802747] , [-0.6 0.6]);line([830860 830860] , [-0.6 0.6]);
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

title('deoxy 1 3 4 20 21 23');
legend('Channel 1','Channel 3', 'Channel 4','Channel 20','Channel 21','Channel 23');

% putting lines for the times that the probe is happening
line([15086 15086] , [-0.6 0.6]);line([42214 42214] , [-0.6 0.6]);
line([69574 69574] , [-0.6 0.6]);line([98221 98221] , [-0.6 0.6]);
line([127629 127629] , [-0.6 0.6]);line([154561 154561] , [-0.6 0.6]);
line([183243 183243] , [-0.6 0.6]);line([210444 210444] , [-0.6 0.6]);
line([240413 240413] , [-0.6 0.6]);line([268380 268380] , [-0.6 0.6]);
line([296985 296985] , [-0.6 0.6]);line([325143 325143] , [-0.6 0.6]);
line([352911 352911] , [-0.6 0.6]);line([381686 381686] , [-0.6 0.6]);
line([411460 411460] , [-0.6 0.6]);line([438511 438511] , [-0.6 0.6]);
line([466166 466166] , [-0.6 0.6]);line([494425 494425] , [-0.6 0.6]);
line([522031 522031] , [-0.6 0.6]);line([551301 551301] , [-0.6 0.6]);
line([579793 579793] , [-0.6 0.6]);line([607126 607126] , [-0.6 0.6]);
line([635453 635453] , [-0.6 0.6]);line([662795 662795] , [-0.6 0.6]);
line([689657 689657] , [-0.6 0.6]);line([719054 719054] , [-0.6 0.6]);
line([746215 746215] , [-0.6 0.6]);line([775287 775287] , [-0.6 0.6]);
line([802747 802747] , [-0.6 0.6]);line([830860 830860] , [-0.6 0.6]);
hold off
