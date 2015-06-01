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

% The variable below ais the interwal whihc we are taking the avarage. This
% interval starts from the start og each trial which is the 2 sec fixation
% for to concentrate on the staudy
%   Fixation **TRIAL 10** study     2 sec 
%   Study --> word-3                6 sec
%   Warning --> +                   6 sec
%   PROBE = hand        
%   *key Pressed* =3
%   Feed Back = 3
%   N-Back :PEN
%   N-Back :WAR
%   N-Back :KEY
%   N-Back :FUN
%   N-Back :KEY
%   N-Back :PEN
%   N-Back :FUN
%   N-Back :GUN
average_interval = 250;

% Ploting the average during the periods for channel 12 and 14 which has
% the most fluctuation in the range of the session 8 to 30
figure
hold on
average_matrix12 = zeros(1, average_interval+1);
average_matrix14 = zeros(1, average_interval+1);

data_lp12=lpf(data(:,12),filttype,fs,fcut,filtlen);
data_lp14=lpf(data(:,14),filttype,fs,fcut,filtlen);

average_matrix12(1,:)      = data_lp12(2462: 2462+average_interval );% 2324 Trial 9
average_matrix12(end +1,:) = data_lp12(2746: 2746+average_interval );% 2602 Trial 10
average_matrix12(end +1,:) = data_lp12(3030: 3030+average_interval );% 2886 Trial 12 
average_matrix12(end +1,:) = data_lp12(3315: 3315+average_interval );% 3170 Trial 13
average_matrix12(end +1,:) = data_lp12(3595: 3595+average_interval );% 3455 Trial 14 
average_matrix12(end +1,:) = data_lp12(3892: 3892+average_interval );% 3735 Trial 15
average_matrix12(end +1,:) = data_lp12(4165: 4165+average_interval );% 4032 Trial 16 
average_matrix12(end +1,:) = data_lp12(4443: 4443+average_interval );% 4306 Trial 17
average_matrix12(end +1,:) = data_lp12(4725: 4725+average_interval );% 4584 Trial 18 
average_matrix12(end +1,:) = data_lp12(4999: 4999+average_interval );% 4865 Trial 19
average_matrix12(end +1,:) = data_lp12(5281: 5281+average_interval );% 5139 Trial 20 
average_matrix12(end +1,:) = data_lp12(5554: 5554+average_interval );% 5421 Trial 21
average_matrix12(end +1,:) = data_lp12(5844: 5844+average_interval );% 5694 Trial 22 
average_matrix12(end +1,:) = data_lp12(6127: 6127+average_interval );% 5985 Trial 23
average_matrix12(end +1,:) = data_lp12(6414: 6414+average_interval );% 6267 Trial 24 
average_matrix12(end +1,:) = data_lp12(6686: 6686+average_interval );% 6555 Trial 25
average_matrix12(end +1,:) = data_lp12(6969: 6969+average_interval );% 6826 Trial 26 
average_matrix12(end +1,:) = data_lp12(7239: 7239+average_interval );% 7109 Trial 27
average_matrix12(end +1,:) = data_lp12(7522: 7522+average_interval );% 7379 Trial 28
average_matrix12(end +1,:) = data_lp12(7796: 7796+average_interval );% 7662 Trial 29
average_matrix12(end +1,:) = data_lp12(8070: 8070+average_interval );% 7936 Trial 30 


average_matrix14(1,:)      = data_lp14(2462: 2462+average_interval ); % 2324 Trial 9
average_matrix14(end +1,:) = data_lp14(2746: 2746+average_interval );% 2602 2602 Trial 10
average_matrix14(end +1,:) = data_lp14(3030: 3030+average_interval );% 2886 2886 Trial 12 
average_matrix14(end +1,:) = data_lp14(3315: 3315+average_interval );% 3170 3170 Trial 13
average_matrix14(end +1,:) = data_lp14(3595: 3595+average_interval );% 3455 3455 Trial 14 
average_matrix14(end +1,:) = data_lp14(3892: 3892+average_interval );% 3735 3735 Trial 15
average_matrix14(end +1,:) = data_lp14(4165: 4165+average_interval );% 4032 4032 Trial 16 
average_matrix14(end +1,:) = data_lp14(4443: 4443+average_interval );% 4306 4306 Trial 17
average_matrix14(end +1,:) = data_lp14(4725: 4725+average_interval );% 4584 4584 Trial 18 
average_matrix14(end +1,:) = data_lp14(4999: 4999+average_interval );% 4865 4865 Trial 19
average_matrix14(end +1,:) = data_lp14(5281: 5281+average_interval );% 5139 5139 Trial 20 
average_matrix14(end +1,:) = data_lp14(5554: 5554+average_interval );% 5421 5421 Trial 21
average_matrix14(end +1,:) = data_lp14(5844: 5844+average_interval );% 5694 5694 Trial 22 
average_matrix14(end +1,:) = data_lp14(6127: 6127+average_interval );% 5985 5985 Trial 23
average_matrix14(end +1,:) = data_lp14(6414: 6414+average_interval );% 6267 6267 Trial 24 
average_matrix14(end +1,:) = data_lp14(6686: 6686+average_interval );% 6555 6555 Trial 25
average_matrix14(end +1,:) = data_lp14(6969: 6969+average_interval );% 6826 6826 Trial 26 
average_matrix14(end +1,:) = data_lp14(7239: 7239+average_interval );% 7109 7109 Trial 27
average_matrix14(end +1,:) = data_lp14(7522: 7522+average_interval );% 7379 7379 Trial 28 
average_matrix14(end +1,:) = data_lp14(7796: 7796+average_interval );% 7662 7662 Trial 29 
average_matrix14(end +1,:) = data_lp14(8070: 8070+average_interval );% 7936 7936 Trial 30

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
title('block1-2 deoxy 12 14');
legend('Channel 12','Channel 14');
% putting lines for the times that the probe is happening
% line([15088 15088] , [-0.8 0.8]);line([41860 41860] , [-0.8 0.8]);
% line([69183 69183] , [-0.8 0.8]);line([96598 96598] , [-0.8 0.8]);
% line([123973 123973] , [-0.8 0.8]);line([150741 150741] , [-0.8 0.8]);
% line([177659 177659] , [-0.8 0.8]);line([204648 204648] , [-0.8 0.8]);
% line([232480 232480] , [-0.8 0.8]);line([260275 260275] , [-0.8 0.8]);
% line([288666 288666] , [-0.8 0.8]);line([317030 317030] , [-0.8 0.8]);
% line([345596 345596] , [-0.8 0.8]);line([373547 373547] , [-0.8 0.8]);
% line([403247 403247] , [-0.8 0.8]);line([430604 430604] , [-0.8 0.8]);
% line([458411 458411] , [-0.8 0.8]);line([486591 486591] , [-0.8 0.8]);
% line([513917 513917] , [-0.8 0.8]);line([542156 542156] , [-0.8 0.8]);
% line([569433 569433] , [-0.8 0.8]);line([598502 598502] , [-0.8 0.8]);
% line([626780 626780] , [-0.8 0.8]);line([655515 655515] , [-0.8 0.8]);
% line([682656 682656] , [-0.8 0.8]);line([710980 710980] , [-0.8 0.8]);
% line([737929 737929] , [-0.8 0.8]);line([766292 766292] , [-0.8 0.8]);
% line([793688 793688] , [-0.8 0.8]);line([821125 821125] , [-0.8 0.8]);


line([1064 1064] , [-0.8 0.8] , 'Color','r');
line([27839 27839] , [-0.8 0.8] , 'Color','r');
line([55163 55163] , [-0.8 0.8] , 'Color','r');
line([82578 82578] , [-0.8 0.8] , 'Color','r');
line([109954 109954] , [-0.8 0.8] , 'Color','r');
line([136724 136724] , [-0.8 0.8] , 'Color','r');
line([163641 163641] , [-0.8 0.8] , 'Color','r');
line([190631 190631] , [-0.8 0.8] , 'Color','r');
line([218461 218461] , [-0.8 0.8] , 'Color','r');
line([246257 246257] , [-0.8 0.8] , 'Color','r');
line([274648 274648] , [-0.8 0.8] , 'Color','r');
line([303013 303013] , [-0.8 0.8] , 'Color','r');
line([331580 331580] , [-0.8 0.8] , 'Color','r');
line([359529 359529] , [-0.8 0.8] , 'Color','r');
line([389231 389231] , [-0.8 0.8] , 'Color','r');
line([416587 416587] , [-0.8 0.8] , 'Color','r');
line([444393 444393] , [-0.8 0.8] , 'Color','r');
line([472576 472576] , [-0.8 0.8] , 'Color','r');
line([499902 499902] , [-0.8 0.8] , 'Color','r');
line([528139 528139] , [-0.8 0.8] , 'Color','r');
line([555416 555416] , [-0.8 0.8] , 'Color','r');
line([584485 584485] , [-0.8 0.8] , 'Color','r');
line([612763 612763] , [-0.8 0.8] , 'Color','r');
line([641499 641499] , [-0.8 0.8] , 'Color','r');
line([668639 668639] , [-0.8 0.8] , 'Color','r');
line([696964 696964] , [-0.8 0.8] , 'Color','r');
line([723914 723914] , [-0.8 0.8] , 'Color','r');
line([752273 752273] , [-0.8 0.8] , 'Color','r');
line([779670 779670] , [-0.8 0.8] , 'Color','r');
line([807083 807083] , [-0.8 0.8] , 'Color','r');

line([3077 3077] , [-0.8 0.8] , 'color' , 'g');
line([29850 29850] , [-0.8 0.8] , 'color' , 'g');
line([57173 57173] , [-0.8 0.8] , 'color' , 'g');
line([84587 84587] , [-0.8 0.8] , 'color' , 'g');
line([111963 111963] , [-0.8 0.8] , 'color' , 'g');
line([138733 138733] , [-0.8 0.8] , 'color' , 'g');
line([165650 165650] , [-0.8 0.8] , 'color' , 'g');
line([192640 192640] , [-0.8 0.8] , 'color' , 'g');
line([220471 220471] , [-0.8 0.8] , 'color' , 'g');
line([248266 248266] , [-0.8 0.8] , 'color' , 'g');
line([276657 276657] , [-0.8 0.8] , 'color' , 'g');
line([305022 305022] , [-0.8 0.8] , 'color' , 'g');
line([333587 333587] , [-0.8 0.8] , 'color' , 'g');
line([361538 361538] , [-0.8 0.8] , 'color' , 'g');
line([391238 391238] , [-0.8 0.8] , 'color' , 'g');
line([418595 418595] , [-0.8 0.8] , 'color' , 'g');
line([446402 446402] , [-0.8 0.8] , 'color' , 'g');
line([474584 474584] , [-0.8 0.8] , 'color' , 'g');
line([501909 501909] , [-0.8 0.8] , 'color' , 'g');
line([530148 530148] , [-0.8 0.8] , 'color' , 'g');
line([557424 557424] , [-0.8 0.8] , 'color' , 'g');
line([586494 586494] , [-0.8 0.8] , 'color' , 'g');
line([614771 614771] , [-0.8 0.8] , 'color' , 'g');
line([643507 643507] , [-0.8 0.8] , 'color' , 'g');
line([670647 670647] , [-0.8 0.8] , 'color' , 'g');
line([698972 698972] , [-0.8 0.8] , 'color' , 'g');
line([725921 725921] , [-0.8 0.8] , 'color' , 'g');
line([754280 754280] , [-0.8 0.8] , 'color' , 'g');
line([781677 781677] , [-0.8 0.8] , 'color' , 'g');
line([809091 809091] , [-0.8 0.8] , 'color' , 'g');

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
% line([15088 15088] , [-0.8 0.8]);line([41860 41860] , [-0.8 0.8]);
% line([69183 69183] , [-0.8 0.8]);line([96598 96598] , [-0.8 0.8]);
% line([123973 123973] , [-0.8 0.8]);line([150741 150741] , [-0.8 0.8]);
% line([177659 177659] , [-0.8 0.8]);line([204648 204648] , [-0.8 0.8]);
% line([232480 232480] , [-0.8 0.8]);line([260275 260275] , [-0.8 0.8]);
% line([288666 288666] , [-0.8 0.8]);line([317030 317030] , [-0.8 0.8]);
% line([345596 345596] , [-0.8 0.8]);line([373547 373547] , [-0.8 0.8]);
% line([403247 403247] , [-0.8 0.8]);line([430604 430604] , [-0.8 0.8]);
% line([458411 458411] , [-0.8 0.8]);line([486591 486591] , [-0.8 0.8]);
% line([513917 513917] , [-0.8 0.8]);line([542156 542156] , [-0.8 0.8]);
% line([569433 569433] , [-0.8 0.8]);line([598502 598502] , [-0.8 0.8]);
% line([626780 626780] , [-0.8 0.8]);line([655515 655515] , [-0.8 0.8]);
% line([682656 682656] , [-0.8 0.8]);line([710980 710980] , [-0.8 0.8]);
% line([737929 737929] , [-0.8 0.8]);line([766292 766292] , [-0.8 0.8]);
% line([793688 793688] , [-0.8 0.8]);line([821125 821125] , [-0.8 0.8]);

line([1064 1064] , [-0.8 0.8] , 'Color','r');
line([27839 27839] , [-0.8 0.8] , 'Color','r');
line([55163 55163] , [-0.8 0.8] , 'Color','r');
line([82578 82578] , [-0.8 0.8] , 'Color','r');
line([109954 109954] , [-0.8 0.8] , 'Color','r');
line([136724 136724] , [-0.8 0.8] , 'Color','r');
line([163641 163641] , [-0.8 0.8] , 'Color','r');
line([190631 190631] , [-0.8 0.8] , 'Color','r');
line([218461 218461] , [-0.8 0.8] , 'Color','r');
line([246257 246257] , [-0.8 0.8] , 'Color','r');
line([274648 274648] , [-0.8 0.8] , 'Color','r');
line([303013 303013] , [-0.8 0.8] , 'Color','r');
line([331580 331580] , [-0.8 0.8] , 'Color','r');
line([359529 359529] , [-0.8 0.8] , 'Color','r');
line([389231 389231] , [-0.8 0.8] , 'Color','r');
line([416587 416587] , [-0.8 0.8] , 'Color','r');
line([444393 444393] , [-0.8 0.8] , 'Color','r');
line([472576 472576] , [-0.8 0.8] , 'Color','r');
line([499902 499902] , [-0.8 0.8] , 'Color','r');
line([528139 528139] , [-0.8 0.8] , 'Color','r');
line([555416 555416] , [-0.8 0.8] , 'Color','r');
line([584485 584485] , [-0.8 0.8] , 'Color','r');
line([612763 612763] , [-0.8 0.8] , 'Color','r');
line([641499 641499] , [-0.8 0.8] , 'Color','r');
line([668639 668639] , [-0.8 0.8] , 'Color','r');
line([696964 696964] , [-0.8 0.8] , 'Color','r');
line([723914 723914] , [-0.8 0.8] , 'Color','r');
line([752273 752273] , [-0.8 0.8] , 'Color','r');
line([779670 779670] , [-0.8 0.8] , 'Color','r');
line([807083 807083] , [-0.8 0.8] , 'Color','r');

line([3077 3077] , [-0.8 0.8] , 'color' , 'g');
line([29850 29850] , [-0.8 0.8] , 'color' , 'g');
line([57173 57173] , [-0.8 0.8] , 'color' , 'g');
line([84587 84587] , [-0.8 0.8] , 'color' , 'g');
line([111963 111963] , [-0.8 0.8] , 'color' , 'g');
line([138733 138733] , [-0.8 0.8] , 'color' , 'g');
line([165650 165650] , [-0.8 0.8] , 'color' , 'g');
line([192640 192640] , [-0.8 0.8] , 'color' , 'g');
line([220471 220471] , [-0.8 0.8] , 'color' , 'g');
line([248266 248266] , [-0.8 0.8] , 'color' , 'g');
line([276657 276657] , [-0.8 0.8] , 'color' , 'g');
line([305022 305022] , [-0.8 0.8] , 'color' , 'g');
line([333587 333587] , [-0.8 0.8] , 'color' , 'g');
line([361538 361538] , [-0.8 0.8] , 'color' , 'g');
line([391238 391238] , [-0.8 0.8] , 'color' , 'g');
line([418595 418595] , [-0.8 0.8] , 'color' , 'g');
line([446402 446402] , [-0.8 0.8] , 'color' , 'g');
line([474584 474584] , [-0.8 0.8] , 'color' , 'g');
line([501909 501909] , [-0.8 0.8] , 'color' , 'g');
line([530148 530148] , [-0.8 0.8] , 'color' , 'g');
line([557424 557424] , [-0.8 0.8] , 'color' , 'g');
line([586494 586494] , [-0.8 0.8] , 'color' , 'g');
line([614771 614771] , [-0.8 0.8] , 'color' , 'g');
line([643507 643507] , [-0.8 0.8] , 'color' , 'g');
line([670647 670647] , [-0.8 0.8] , 'color' , 'g');
line([698972 698972] , [-0.8 0.8] , 'color' , 'g');
line([725921 725921] , [-0.8 0.8] , 'color' , 'g');
line([754280 754280] , [-0.8 0.8] , 'color' , 'g');
line([781677 781677] , [-0.8 0.8] , 'color' , 'g');
line([809091 809091] , [-0.8 0.8] , 'color' , 'g');

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





