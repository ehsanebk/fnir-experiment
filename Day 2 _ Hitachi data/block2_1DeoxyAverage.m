close all
data=csvread('DeoxyDataForBlock2_1_matlab.csv');
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



% Ploting the average during the periods for channel 12 and 14 which has
% the most fluctuation in the range of the session 8 to 30
figure
hold on

average_matrix12 = zeros(1, 101);
average_matrix14 = zeros(1, 101);

data_lp12=lpf(data(:,12),filttype,fs,fcut,filtlen);
data_lp14=lpf(data(:,14),filttype,fs,fcut,filtlen);

average_matrix12(1,:)= data_lp12(1832: 1832+100); %     1832 Trial 6
average_matrix12(end+1,:)= data_lp12(2104: 2104+100); % 2104 Trial 7
average_matrix12(end+1,:)= data_lp12(2404: 2404+100); % 2404 Trial 8
average_matrix12(end+1,:)= data_lp12(2683: 2683+100); % 2683 Trial 9
average_matrix12(end+1,:)= data_lp12(2969: 2969+100); % 2969 Trial 10
average_matrix12(end+1,:)= data_lp12(3251: 3251+100); % 3251 Trial 12
average_matrix12(end+1,:)= data_lp12(3529: 3529+100); % 3529 Trial 13
average_matrix12(end+1,:)= data_lp12(3816: 3816+100); % 3816 Trial 14
average_matrix12(end+1,:)= data_lp12(4114: 4114+100); % 4114 Trial 15
average_matrix12(end+1,:)= data_lp12(4385: 4385+100); % 4385 Trial 16
average_matrix12(end+1,:)= data_lp12(4661: 4661+100); % 4661 Trial 17
average_matrix12(end+1,:)= data_lp12(4944: 4944+100); % 4944 Trial 18
average_matrix12(end+1,:)= data_lp12(5220: 5220+100); % 5220 Trial 19
average_matrix12(end+1,:)= data_lp12(5513: 5513+100); % 5513 Trial 20
average_matrix12(end+1,:)= data_lp12(5797: 5797+100); % 5797 Trial 21
average_matrix12(end+1,:)= data_lp12(6071: 6071+100); % 6071 Trial 22
average_matrix12(end+1,:)= data_lp12(6354: 6354+100); % 6354 Trial 23
average_matrix12(end+1,:)= data_lp12(6627: 6627+100); % 6627 Trial 24
average_matrix12(end+1,:)= data_lp12(6896: 6896+100); % 6896 Trial 25
average_matrix12(end+1,:)= data_lp12(7190: 7190+100); % 7190 Trial 26
average_matrix12(end+1,:)= data_lp12(7462: 7462+100); % 7462 Trial 27
average_matrix12(end+1,:)= data_lp12(7752: 7752+100); % 7752 Trial 28
average_matrix12(end+1,:)= data_lp12(8027: 8027+100); % 8027 Trial 29
average_matrix12(end+1,:)= data_lp12(8308: 8308+100); % 8308 Trial 30


average_matrix14(1,:)= data_lp14(1832: 1832+100); %     1832 Trial 6
average_matrix14(end+1,:)= data_lp14(2104: 2104+100); % 2104 Trial 7
average_matrix14(end+1,:)= data_lp14(2404: 2404+100); % 2404 Trial 8
average_matrix14(end+1,:)= data_lp14(2683: 2683+100); % 2683 Trial 9
average_matrix14(end+1,:)= data_lp14(2969: 2969+100); % 2969 Trial 10
average_matrix14(end+1,:)= data_lp14(3251: 3251+100); % 3251 Trial 12
average_matrix14(end+1,:)= data_lp14(3529: 3529+100); % 3529 Trial 13
average_matrix14(end+1,:)= data_lp14(3816: 3816+100); % 3816 Trial 14
average_matrix14(end+1,:)= data_lp14(4114: 4114+100); % 4114 Trial 15
average_matrix14(end+1,:)= data_lp14(4385: 4385+100); % 4385 Trial 16
average_matrix14(end+1,:)= data_lp14(4661: 4661+100); % 4661 Trial 17
average_matrix14(end+1,:)= data_lp14(4944: 4944+100); % 4944 Trial 18
average_matrix14(end+1,:)= data_lp14(5220: 5220+100); % 5220 Trial 19
average_matrix14(end+1,:)= data_lp14(5513: 5513+100); % 5513 Trial 20
average_matrix14(end+1,:)= data_lp14(5797: 5797+100); % 5797 Trial 21
average_matrix14(end+1,:)= data_lp14(6071: 6071+100); % 6071 Trial 22
average_matrix14(end+1,:)= data_lp14(6354: 6354+100); % 6354 Trial 23
average_matrix14(end+1,:)= data_lp14(6627: 6627+100); % 6627 Trial 24
average_matrix14(end+1,:)= data_lp14(6896: 6896+100); % 6896 Trial 25
average_matrix14(end+1,:)= data_lp14(7190: 7190+100); % 7190 Trial 26
average_matrix14(end+1,:)= data_lp14(7462: 7462+100); % 7462 Trial 27
average_matrix14(end+1,:)= data_lp14(7752: 7752+100); % 7752 Trial 28
average_matrix14(end+1,:)= data_lp14(8027: 8027+100); % 8027 Trial 29
average_matrix14(end+1,:)= data_lp14(8308: 8308+100); % 8308 Trial 30

plot(mean(average_matrix12,1));
plot(mean(average_matrix14,1));

title('block1-2 deoxy 12 14 Average');

legend('Channel 12','Channel 14');

hold off


% Plot for channel 12 14
figure
hold on
data_lp=lpf(data(:,12),filttype,fs,fcut,filtlen);
%plot(t(from:to),data(from:to,i))\
plot(t(from:to),data_lp(from:to))
data_lp=lpf(data(:,14),filttype,fs,fcut,filtlen);
plot(t(from:to),data_lp(from:to))
title('block2-1 deoxy 12 14');
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
title('block2-1 deoxy 11 13');
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
title('block2-1 deoxy 10 17');
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
title('block2-1 deoxy 9 16');
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