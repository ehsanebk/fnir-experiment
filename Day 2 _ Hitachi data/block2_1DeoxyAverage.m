% close all
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


% Ploting the average during the periods for channel 12  which has
% the most fluctuation in the range of the session 8 to 30
figure
subplot(4,4,1);
hold on
average_matrix = zeros(1, average_interval+ 1);

data_lp=lpf(data(:,12),filttype,fs,fcut,filtlen);

average_matrix(1,:)= data_lp(    1692: 1692+average_interval); % 1692 Trial 6
average_matrix(end+1,:)= data_lp(1964: 1964+average_interval); % 1964 Trial 7
average_matrix(end+1,:)= data_lp(2263: 2263+average_interval); % 2263 Trial 8
average_matrix(end+1,:)= data_lp(2543: 2543+average_interval); % 2543 Trial 9
average_matrix(end+1,:)= data_lp(2829: 2829+average_interval); % 2829 Trial 10
average_matrix(end+1,:)= data_lp(3111: 3111+average_interval); % 3111 Trial 12
average_matrix(end+1,:)= data_lp(3388: 3388+average_interval); % 3388 Trial 13
average_matrix(end+1,:)= data_lp(3676: 3676+average_interval); % 3676 Trial 14
average_matrix(end+1,:)= data_lp(3974: 3974+average_interval); % 3974 Trial 15
average_matrix(end+1,:)= data_lp(4244: 4244+average_interval); % 4244 Trial 16
average_matrix(end+1,:)= data_lp(4521: 4521+average_interval); % 4521 Trial 17
average_matrix(end+1,:)= data_lp(4804: 4804+average_interval); % 4804 Trial 18
average_matrix(end+1,:)= data_lp(5080: 5080+average_interval); % 5080 Trial 19
average_matrix(end+1,:)= data_lp(5372: 5372+average_interval); % 5372 Trial 20
average_matrix(end+1,:)= data_lp(5657: 5657+average_interval); % 5657 Trial 21
average_matrix(end+1,:)= data_lp(5931: 5931+average_interval); % 5931 Trial 22
average_matrix(end+1,:)= data_lp(6214: 6214+average_interval); % 6214 Trial 23
average_matrix(end+1,:)= data_lp(6487: 6487+average_interval); % 6487 Trial 24
average_matrix(end+1,:)= data_lp(6756: 6756+average_interval); % 6756 Trial 25
average_matrix(end+1,:)= data_lp(7050: 7050+average_interval); % 7050 Trial 26
average_matrix(end+1,:)= data_lp(7321: 7321+average_interval); % 7321 Trial 27
average_matrix(end+1,:)= data_lp(7612: 7612+average_interval); % 7612 Trial 28
average_matrix(end+1,:)= data_lp(7887: 7887+average_interval); % 7887 Trial 29
average_matrix(end+1,:)= data_lp(8168: 8168+average_interval); % 8168 Trial 30


average = mean(average_matrix,1);
xmarkers = [20 80 140]; % place markers at these x-values
ymarkers = average(xmarkers);

plot(1:251,average,xmarkers,ymarkers,'b*');

average_mean = mean(average,2);
axis([0 251 average_mean-0.04 average_mean+0.04 ])
line([20 20] , [average_mean-0.04 average_mean+0.04] , 'Color','r');
line([80 80] , [average_mean-0.04 average_mean+0.04] , 'Color','r');
line([140 140] , [average_mean-0.04 average_mean+0.04] , 'Color','r');

title('block2-1 deoxy c12  Average');

% Ploting the average during the periods for channel 14  which has
% the most fluctuation in the range of the session 8 to 30
subplot(4,4,2);
average_matrix = zeros(1, average_interval+ 1);
data_lp=lpf(data(:,14),filttype,fs,fcut,filtlen);

average_matrix(1,:)= data_lp(    1692: 1692+average_interval); % 1692 Trial 6
average_matrix(end+1,:)= data_lp(1964: 1964+average_interval); % 1964 Trial 7
average_matrix(end+1,:)= data_lp(2263: 2263+average_interval); % 2263 Trial 8
average_matrix(end+1,:)= data_lp(2543: 2543+average_interval); % 2543 Trial 9
average_matrix(end+1,:)= data_lp(2829: 2829+average_interval); % 2829 Trial 10
average_matrix(end+1,:)= data_lp(3111: 3111+average_interval); % 3111 Trial 12
average_matrix(end+1,:)= data_lp(3388: 3388+average_interval); % 3388 Trial 13
average_matrix(end+1,:)= data_lp(3676: 3676+average_interval); % 3676 Trial 14
average_matrix(end+1,:)= data_lp(3974: 3974+average_interval); % 3974 Trial 15
average_matrix(end+1,:)= data_lp(4244: 4244+average_interval); % 4244 Trial 16
average_matrix(end+1,:)= data_lp(4521: 4521+average_interval); % 4521 Trial 17
average_matrix(end+1,:)= data_lp(4804: 4804+average_interval); % 4804 Trial 18
average_matrix(end+1,:)= data_lp(5080: 5080+average_interval); % 5080 Trial 19
average_matrix(end+1,:)= data_lp(5372: 5372+average_interval); % 5372 Trial 20
average_matrix(end+1,:)= data_lp(5657: 5657+average_interval); % 5657 Trial 21
average_matrix(end+1,:)= data_lp(5931: 5931+average_interval); % 5931 Trial 22
average_matrix(end+1,:)= data_lp(6214: 6214+average_interval); % 6214 Trial 23
average_matrix(end+1,:)= data_lp(6487: 6487+average_interval); % 6487 Trial 24
average_matrix(end+1,:)= data_lp(6756: 6756+average_interval); % 6756 Trial 25
average_matrix(end+1,:)= data_lp(7050: 7050+average_interval); % 7050 Trial 26
average_matrix(end+1,:)= data_lp(7321: 7321+average_interval); % 7321 Trial 27
average_matrix(end+1,:)= data_lp(7612: 7612+average_interval); % 7612 Trial 28
average_matrix(end+1,:)= data_lp(7887: 7887+average_interval); % 7887 Trial 29
average_matrix(end+1,:)= data_lp(8168: 8168+average_interval); % 8168 Trial 30


average = mean(average_matrix,1);
xmarkers = [20 80 140]; % place markers at these x-values
ymarkers = average(xmarkers);

plot(1:251,average,xmarkers,ymarkers,'b*');

average_mean = mean(average,2);
axis([0 251 average_mean-0.04 average_mean+0.04 ])
line([20 20] , [average_mean-0.04 average_mean+0.04] , 'Color','r');
line([80 80] , [average_mean-0.04 average_mean+0.04] , 'Color','r');
line([140 140] , [average_mean-0.04 average_mean+0.04] , 'Color','r');

title('block2-1 deoxy c14  Average');

% Ploting the average during the periods for channel 11 
subplot(4,4,3);
hold on
average_matrix = zeros(1, average_interval+ 1);
data_lp=lpf(data(:,11),filttype,fs,fcut,filtlen);

average_matrix(1,:)= data_lp(    1692: 1692+average_interval); % 1692 Trial 6
average_matrix(end+1,:)= data_lp(1964: 1964+average_interval); % 1964 Trial 7
average_matrix(end+1,:)= data_lp(2263: 2263+average_interval); % 2263 Trial 8
average_matrix(end+1,:)= data_lp(2543: 2543+average_interval); % 2543 Trial 9
average_matrix(end+1,:)= data_lp(2829: 2829+average_interval); % 2829 Trial 10
average_matrix(end+1,:)= data_lp(3111: 3111+average_interval); % 3111 Trial 12
average_matrix(end+1,:)= data_lp(3388: 3388+average_interval); % 3388 Trial 13
average_matrix(end+1,:)= data_lp(3676: 3676+average_interval); % 3676 Trial 14
average_matrix(end+1,:)= data_lp(3974: 3974+average_interval); % 3974 Trial 15
average_matrix(end+1,:)= data_lp(4244: 4244+average_interval); % 4244 Trial 16
average_matrix(end+1,:)= data_lp(4521: 4521+average_interval); % 4521 Trial 17
average_matrix(end+1,:)= data_lp(4804: 4804+average_interval); % 4804 Trial 18
average_matrix(end+1,:)= data_lp(5080: 5080+average_interval); % 5080 Trial 19
average_matrix(end+1,:)= data_lp(5372: 5372+average_interval); % 5372 Trial 20
average_matrix(end+1,:)= data_lp(5657: 5657+average_interval); % 5657 Trial 21
average_matrix(end+1,:)= data_lp(5931: 5931+average_interval); % 5931 Trial 22
average_matrix(end+1,:)= data_lp(6214: 6214+average_interval); % 6214 Trial 23
average_matrix(end+1,:)= data_lp(6487: 6487+average_interval); % 6487 Trial 24
average_matrix(end+1,:)= data_lp(6756: 6756+average_interval); % 6756 Trial 25
average_matrix(end+1,:)= data_lp(7050: 7050+average_interval); % 7050 Trial 26
average_matrix(end+1,:)= data_lp(7321: 7321+average_interval); % 7321 Trial 27
average_matrix(end+1,:)= data_lp(7612: 7612+average_interval); % 7612 Trial 28
average_matrix(end+1,:)= data_lp(7887: 7887+average_interval); % 7887 Trial 29
average_matrix(end+1,:)= data_lp(8168: 8168+average_interval); % 8168 Trial 30


average = mean(average_matrix,1);
xmarkers = [20 80 140]; % place markers at these x-values
ymarkers = average(xmarkers);

plot(1:251,average,xmarkers,ymarkers,'b*');

average_mean = mean(average,2);
axis([0 251 average_mean-0.04 average_mean+0.04 ])
line([20 20] , [average_mean-0.04 average_mean+0.04] , 'Color','r');
line([80 80] , [average_mean-0.04 average_mean+0.04] , 'Color','r');
line([140 140] , [average_mean-0.04 average_mean+0.04] , 'Color','r');

title('block2-1 deoxy c11  Average');

% Ploting the average during the periods for channel 13 
subplot(4,4,4);
average_matrix = zeros(1, average_interval+ 1);
data_lp=lpf(data(:,13),filttype,fs,fcut,filtlen);

average_matrix(1,:)= data_lp(    1692: 1692+average_interval); % 1692 Trial 6
average_matrix(end+1,:)= data_lp(1964: 1964+average_interval); % 1964 Trial 7
average_matrix(end+1,:)= data_lp(2263: 2263+average_interval); % 2263 Trial 8
average_matrix(end+1,:)= data_lp(2543: 2543+average_interval); % 2543 Trial 9
average_matrix(end+1,:)= data_lp(2829: 2829+average_interval); % 2829 Trial 10
average_matrix(end+1,:)= data_lp(3111: 3111+average_interval); % 3111 Trial 12
average_matrix(end+1,:)= data_lp(3388: 3388+average_interval); % 3388 Trial 13
average_matrix(end+1,:)= data_lp(3676: 3676+average_interval); % 3676 Trial 14
average_matrix(end+1,:)= data_lp(3974: 3974+average_interval); % 3974 Trial 15
average_matrix(end+1,:)= data_lp(4244: 4244+average_interval); % 4244 Trial 16
average_matrix(end+1,:)= data_lp(4521: 4521+average_interval); % 4521 Trial 17
average_matrix(end+1,:)= data_lp(4804: 4804+average_interval); % 4804 Trial 18
average_matrix(end+1,:)= data_lp(5080: 5080+average_interval); % 5080 Trial 19
average_matrix(end+1,:)= data_lp(5372: 5372+average_interval); % 5372 Trial 20
average_matrix(end+1,:)= data_lp(5657: 5657+average_interval); % 5657 Trial 21
average_matrix(end+1,:)= data_lp(5931: 5931+average_interval); % 5931 Trial 22
average_matrix(end+1,:)= data_lp(6214: 6214+average_interval); % 6214 Trial 23
average_matrix(end+1,:)= data_lp(6487: 6487+average_interval); % 6487 Trial 24
average_matrix(end+1,:)= data_lp(6756: 6756+average_interval); % 6756 Trial 25
average_matrix(end+1,:)= data_lp(7050: 7050+average_interval); % 7050 Trial 26
average_matrix(end+1,:)= data_lp(7321: 7321+average_interval); % 7321 Trial 27
average_matrix(end+1,:)= data_lp(7612: 7612+average_interval); % 7612 Trial 28
average_matrix(end+1,:)= data_lp(7887: 7887+average_interval); % 7887 Trial 29
average_matrix(end+1,:)= data_lp(8168: 8168+average_interval); % 8168 Trial 30


average = mean(average_matrix,1);
xmarkers = [20 80 140]; % place markers at these x-values
ymarkers = average(xmarkers);

plot(1:251,average,xmarkers,ymarkers,'b*');

average_mean = mean(average,2);
axis([0 251 average_mean-0.04 average_mean+0.04 ])
line([20 20] , [average_mean-0.04 average_mean+0.04] , 'Color','r');
line([80 80] , [average_mean-0.04 average_mean+0.04] , 'Color','r');
line([140 140] , [average_mean-0.04 average_mean+0.04] , 'Color','r');

title('block2-1 deoxy c13  Average');

% Plot for channel 10
subplot(4,4,5);
average_matrix = zeros(1, average_interval+ 1);
data_lp=lpf(data(:,10),filttype,fs,fcut,filtlen);

average_matrix(1,:)= data_lp(    1692: 1692+average_interval); % 1692 Trial 6
average_matrix(end+1,:)= data_lp(1964: 1964+average_interval); % 1964 Trial 7
average_matrix(end+1,:)= data_lp(2263: 2263+average_interval); % 2263 Trial 8
average_matrix(end+1,:)= data_lp(2543: 2543+average_interval); % 2543 Trial 9
average_matrix(end+1,:)= data_lp(2829: 2829+average_interval); % 2829 Trial 10
average_matrix(end+1,:)= data_lp(3111: 3111+average_interval); % 3111 Trial 12
average_matrix(end+1,:)= data_lp(3388: 3388+average_interval); % 3388 Trial 13
average_matrix(end+1,:)= data_lp(3676: 3676+average_interval); % 3676 Trial 14
average_matrix(end+1,:)= data_lp(3974: 3974+average_interval); % 3974 Trial 15
average_matrix(end+1,:)= data_lp(4244: 4244+average_interval); % 4244 Trial 16
average_matrix(end+1,:)= data_lp(4521: 4521+average_interval); % 4521 Trial 17
average_matrix(end+1,:)= data_lp(4804: 4804+average_interval); % 4804 Trial 18
average_matrix(end+1,:)= data_lp(5080: 5080+average_interval); % 5080 Trial 19
average_matrix(end+1,:)= data_lp(5372: 5372+average_interval); % 5372 Trial 20
average_matrix(end+1,:)= data_lp(5657: 5657+average_interval); % 5657 Trial 21
average_matrix(end+1,:)= data_lp(5931: 5931+average_interval); % 5931 Trial 22
average_matrix(end+1,:)= data_lp(6214: 6214+average_interval); % 6214 Trial 23
average_matrix(end+1,:)= data_lp(6487: 6487+average_interval); % 6487 Trial 24
average_matrix(end+1,:)= data_lp(6756: 6756+average_interval); % 6756 Trial 25
average_matrix(end+1,:)= data_lp(7050: 7050+average_interval); % 7050 Trial 26
average_matrix(end+1,:)= data_lp(7321: 7321+average_interval); % 7321 Trial 27
average_matrix(end+1,:)= data_lp(7612: 7612+average_interval); % 7612 Trial 28
average_matrix(end+1,:)= data_lp(7887: 7887+average_interval); % 7887 Trial 29
average_matrix(end+1,:)= data_lp(8168: 8168+average_interval); % 8168 Trial 30


average = mean(average_matrix,1);
xmarkers = [20 80 140]; % place markers at these x-values
ymarkers = average(xmarkers);

plot(1:251,average,xmarkers,ymarkers,'b*');

average_mean = mean(average,2);
axis([0 251 average_mean-0.04 average_mean+0.04 ])
line([20 20] , [average_mean-0.04 average_mean+0.04] , 'Color','r');
line([80 80] , [average_mean-0.04 average_mean+0.04] , 'Color','r');
line([140 140] , [average_mean-0.04 average_mean+0.04] , 'Color','r');

title('block2-1 deoxy c10  Average');

% plot for channel 17
subplot(4,4,6);
average_matrix = zeros(1, average_interval+ 1);
data_lp=lpf(data(:,17),filttype,fs,fcut,filtlen);

average_matrix(1,:)= data_lp(    1692: 1692+average_interval); % 1692 Trial 6
average_matrix(end+1,:)= data_lp(1964: 1964+average_interval); % 1964 Trial 7
average_matrix(end+1,:)= data_lp(2263: 2263+average_interval); % 2263 Trial 8
average_matrix(end+1,:)= data_lp(2543: 2543+average_interval); % 2543 Trial 9
average_matrix(end+1,:)= data_lp(2829: 2829+average_interval); % 2829 Trial 10
average_matrix(end+1,:)= data_lp(3111: 3111+average_interval); % 3111 Trial 12
average_matrix(end+1,:)= data_lp(3388: 3388+average_interval); % 3388 Trial 13
average_matrix(end+1,:)= data_lp(3676: 3676+average_interval); % 3676 Trial 14
average_matrix(end+1,:)= data_lp(3974: 3974+average_interval); % 3974 Trial 15
average_matrix(end+1,:)= data_lp(4244: 4244+average_interval); % 4244 Trial 16
average_matrix(end+1,:)= data_lp(4521: 4521+average_interval); % 4521 Trial 17
average_matrix(end+1,:)= data_lp(4804: 4804+average_interval); % 4804 Trial 18
average_matrix(end+1,:)= data_lp(5080: 5080+average_interval); % 5080 Trial 19
average_matrix(end+1,:)= data_lp(5372: 5372+average_interval); % 5372 Trial 20
average_matrix(end+1,:)= data_lp(5657: 5657+average_interval); % 5657 Trial 21
average_matrix(end+1,:)= data_lp(5931: 5931+average_interval); % 5931 Trial 22
average_matrix(end+1,:)= data_lp(6214: 6214+average_interval); % 6214 Trial 23
average_matrix(end+1,:)= data_lp(6487: 6487+average_interval); % 6487 Trial 24
average_matrix(end+1,:)= data_lp(6756: 6756+average_interval); % 6756 Trial 25
average_matrix(end+1,:)= data_lp(7050: 7050+average_interval); % 7050 Trial 26
average_matrix(end+1,:)= data_lp(7321: 7321+average_interval); % 7321 Trial 27
average_matrix(end+1,:)= data_lp(7612: 7612+average_interval); % 7612 Trial 28
average_matrix(end+1,:)= data_lp(7887: 7887+average_interval); % 7887 Trial 29
average_matrix(end+1,:)= data_lp(8168: 8168+average_interval); % 8168 Trial 30


average = mean(average_matrix,1);
xmarkers = [20 80 140]; % place markers at these x-values
ymarkers = average(xmarkers);

plot(1:251,average,xmarkers,ymarkers,'b*');

average_mean = mean(average,2);
axis([0 251 average_mean-0.04 average_mean+0.04 ])
line([20 20] , [average_mean-0.04 average_mean+0.04] , 'Color','r');
line([80 80] , [average_mean-0.04 average_mean+0.04] , 'Color','r');
line([140 140] , [average_mean-0.04 average_mean+0.04] , 'Color','r');

title('block2-1 deoxy c17  Average');

% Plot for channel 9 
subplot(4,4,7);
average_matrix = zeros(1, average_interval+ 1);
data_lp=lpf(data(:,9),filttype,fs,fcut,filtlen);

average_matrix(1,:)= data_lp(    1692: 1692+average_interval); % 1692 Trial 6
average_matrix(end+1,:)= data_lp(1964: 1964+average_interval); % 1964 Trial 7
average_matrix(end+1,:)= data_lp(2263: 2263+average_interval); % 2263 Trial 8
average_matrix(end+1,:)= data_lp(2543: 2543+average_interval); % 2543 Trial 9
average_matrix(end+1,:)= data_lp(2829: 2829+average_interval); % 2829 Trial 10
average_matrix(end+1,:)= data_lp(3111: 3111+average_interval); % 3111 Trial 12
average_matrix(end+1,:)= data_lp(3388: 3388+average_interval); % 3388 Trial 13
average_matrix(end+1,:)= data_lp(3676: 3676+average_interval); % 3676 Trial 14
average_matrix(end+1,:)= data_lp(3974: 3974+average_interval); % 3974 Trial 15
average_matrix(end+1,:)= data_lp(4244: 4244+average_interval); % 4244 Trial 16
average_matrix(end+1,:)= data_lp(4521: 4521+average_interval); % 4521 Trial 17
average_matrix(end+1,:)= data_lp(4804: 4804+average_interval); % 4804 Trial 18
average_matrix(end+1,:)= data_lp(5080: 5080+average_interval); % 5080 Trial 19
average_matrix(end+1,:)= data_lp(5372: 5372+average_interval); % 5372 Trial 20
average_matrix(end+1,:)= data_lp(5657: 5657+average_interval); % 5657 Trial 21
average_matrix(end+1,:)= data_lp(5931: 5931+average_interval); % 5931 Trial 22
average_matrix(end+1,:)= data_lp(6214: 6214+average_interval); % 6214 Trial 23
average_matrix(end+1,:)= data_lp(6487: 6487+average_interval); % 6487 Trial 24
average_matrix(end+1,:)= data_lp(6756: 6756+average_interval); % 6756 Trial 25
average_matrix(end+1,:)= data_lp(7050: 7050+average_interval); % 7050 Trial 26
average_matrix(end+1,:)= data_lp(7321: 7321+average_interval); % 7321 Trial 27
average_matrix(end+1,:)= data_lp(7612: 7612+average_interval); % 7612 Trial 28
average_matrix(end+1,:)= data_lp(7887: 7887+average_interval); % 7887 Trial 29
average_matrix(end+1,:)= data_lp(8168: 8168+average_interval); % 8168 Trial 30


average = mean(average_matrix,1);
xmarkers = [20 80 140]; % place markers at these x-values
ymarkers = average(xmarkers);

plot(1:251,average,xmarkers,ymarkers,'b*');

average_mean = mean(average,2);
axis([0 251 average_mean-0.04 average_mean+0.04 ])
line([20 20] , [average_mean-0.04 average_mean+0.04] , 'Color','r');
line([80 80] , [average_mean-0.04 average_mean+0.04] , 'Color','r');
line([140 140] , [average_mean-0.04 average_mean+0.04] , 'Color','r');

title('block2-1 deoxy c9  Average');

% plot for channel 16
subplot(4,4,8);
average_matrix = zeros(1, average_interval+ 1);
data_lp=lpf(data(:,16),filttype,fs,fcut,filtlen);

average_matrix(1,:)= data_lp(    1692: 1692+average_interval); % 1692 Trial 6
average_matrix(end+1,:)= data_lp(1964: 1964+average_interval); % 1964 Trial 7
average_matrix(end+1,:)= data_lp(2263: 2263+average_interval); % 2263 Trial 8
average_matrix(end+1,:)= data_lp(2543: 2543+average_interval); % 2543 Trial 9
average_matrix(end+1,:)= data_lp(2829: 2829+average_interval); % 2829 Trial 10
average_matrix(end+1,:)= data_lp(3111: 3111+average_interval); % 3111 Trial 12
average_matrix(end+1,:)= data_lp(3388: 3388+average_interval); % 3388 Trial 13
average_matrix(end+1,:)= data_lp(3676: 3676+average_interval); % 3676 Trial 14
average_matrix(end+1,:)= data_lp(3974: 3974+average_interval); % 3974 Trial 15
average_matrix(end+1,:)= data_lp(4244: 4244+average_interval); % 4244 Trial 16
average_matrix(end+1,:)= data_lp(4521: 4521+average_interval); % 4521 Trial 17
average_matrix(end+1,:)= data_lp(4804: 4804+average_interval); % 4804 Trial 18
average_matrix(end+1,:)= data_lp(5080: 5080+average_interval); % 5080 Trial 19
average_matrix(end+1,:)= data_lp(5372: 5372+average_interval); % 5372 Trial 20
average_matrix(end+1,:)= data_lp(5657: 5657+average_interval); % 5657 Trial 21
average_matrix(end+1,:)= data_lp(5931: 5931+average_interval); % 5931 Trial 22
average_matrix(end+1,:)= data_lp(6214: 6214+average_interval); % 6214 Trial 23
average_matrix(end+1,:)= data_lp(6487: 6487+average_interval); % 6487 Trial 24
average_matrix(end+1,:)= data_lp(6756: 6756+average_interval); % 6756 Trial 25
average_matrix(end+1,:)= data_lp(7050: 7050+average_interval); % 7050 Trial 26
average_matrix(end+1,:)= data_lp(7321: 7321+average_interval); % 7321 Trial 27
average_matrix(end+1,:)= data_lp(7612: 7612+average_interval); % 7612 Trial 28
average_matrix(end+1,:)= data_lp(7887: 7887+average_interval); % 7887 Trial 29
average_matrix(end+1,:)= data_lp(8168: 8168+average_interval); % 8168 Trial 30


average = mean(average_matrix,1);
xmarkers = [20 80 140]; % place markers at these x-values
ymarkers = average(xmarkers);

plot(1:251,average,xmarkers,ymarkers,'b*');

average_mean = mean(average,2);
axis([0 251 average_mean-0.04 average_mean+0.04 ])
line([20 20] , [average_mean-0.04 average_mean+0.04] , 'Color','r');
line([80 80] , [average_mean-0.04 average_mean+0.04] , 'Color','r');
line([140 140] , [average_mean-0.04 average_mean+0.04] , 'Color','r');

title('block2-1 deoxy c16  Average');

% Plot for channel 7 
subplot(4,4,9);
average_matrix = zeros(1, average_interval+ 1);
data_lp=lpf(data(:,7),filttype,fs,fcut,filtlen);

average_matrix(1,:)= data_lp(    1692: 1692+average_interval); % 1692 Trial 6
average_matrix(end+1,:)= data_lp(1964: 1964+average_interval); % 1964 Trial 7
average_matrix(end+1,:)= data_lp(2263: 2263+average_interval); % 2263 Trial 8
average_matrix(end+1,:)= data_lp(2543: 2543+average_interval); % 2543 Trial 9
average_matrix(end+1,:)= data_lp(2829: 2829+average_interval); % 2829 Trial 10
average_matrix(end+1,:)= data_lp(3111: 3111+average_interval); % 3111 Trial 12
average_matrix(end+1,:)= data_lp(3388: 3388+average_interval); % 3388 Trial 13
average_matrix(end+1,:)= data_lp(3676: 3676+average_interval); % 3676 Trial 14
average_matrix(end+1,:)= data_lp(3974: 3974+average_interval); % 3974 Trial 15
average_matrix(end+1,:)= data_lp(4244: 4244+average_interval); % 4244 Trial 16
average_matrix(end+1,:)= data_lp(4521: 4521+average_interval); % 4521 Trial 17
average_matrix(end+1,:)= data_lp(4804: 4804+average_interval); % 4804 Trial 18
average_matrix(end+1,:)= data_lp(5080: 5080+average_interval); % 5080 Trial 19
average_matrix(end+1,:)= data_lp(5372: 5372+average_interval); % 5372 Trial 20
average_matrix(end+1,:)= data_lp(5657: 5657+average_interval); % 5657 Trial 21
average_matrix(end+1,:)= data_lp(5931: 5931+average_interval); % 5931 Trial 22
average_matrix(end+1,:)= data_lp(6214: 6214+average_interval); % 6214 Trial 23
average_matrix(end+1,:)= data_lp(6487: 6487+average_interval); % 6487 Trial 24
average_matrix(end+1,:)= data_lp(6756: 6756+average_interval); % 6756 Trial 25
average_matrix(end+1,:)= data_lp(7050: 7050+average_interval); % 7050 Trial 26
average_matrix(end+1,:)= data_lp(7321: 7321+average_interval); % 7321 Trial 27
average_matrix(end+1,:)= data_lp(7612: 7612+average_interval); % 7612 Trial 28
average_matrix(end+1,:)= data_lp(7887: 7887+average_interval); % 7887 Trial 29
average_matrix(end+1,:)= data_lp(8168: 8168+average_interval); % 8168 Trial 30


average = mean(average_matrix,1);
xmarkers = [20 80 140]; % place markers at these x-values
ymarkers = average(xmarkers);

plot(1:251,average,xmarkers,ymarkers,'b*');

average_mean = mean(average,2);
axis([0 251 average_mean-0.04 average_mean+0.04 ])
line([20 20] , [average_mean-0.04 average_mean+0.04] , 'Color','r');
line([80 80] , [average_mean-0.04 average_mean+0.04] , 'Color','r');
line([140 140] , [average_mean-0.04 average_mean+0.04] , 'Color','r');

title('block2-1 deoxy c9  Average');

% plot for channel 19
subplot(4,4,10);
average_matrix = zeros(1, average_interval+ 1);
data_lp=lpf(data(:,19),filttype,fs,fcut,filtlen);

average_matrix(1,:)= data_lp(    1692: 1692+average_interval); % 1692 Trial 6
average_matrix(end+1,:)= data_lp(1964: 1964+average_interval); % 1964 Trial 7
average_matrix(end+1,:)= data_lp(2263: 2263+average_interval); % 2263 Trial 8
average_matrix(end+1,:)= data_lp(2543: 2543+average_interval); % 2543 Trial 9
average_matrix(end+1,:)= data_lp(2829: 2829+average_interval); % 2829 Trial 10
average_matrix(end+1,:)= data_lp(3111: 3111+average_interval); % 3111 Trial 12
average_matrix(end+1,:)= data_lp(3388: 3388+average_interval); % 3388 Trial 13
average_matrix(end+1,:)= data_lp(3676: 3676+average_interval); % 3676 Trial 14
average_matrix(end+1,:)= data_lp(3974: 3974+average_interval); % 3974 Trial 15
average_matrix(end+1,:)= data_lp(4244: 4244+average_interval); % 4244 Trial 16
average_matrix(end+1,:)= data_lp(4521: 4521+average_interval); % 4521 Trial 17
average_matrix(end+1,:)= data_lp(4804: 4804+average_interval); % 4804 Trial 18
average_matrix(end+1,:)= data_lp(5080: 5080+average_interval); % 5080 Trial 19
average_matrix(end+1,:)= data_lp(5372: 5372+average_interval); % 5372 Trial 20
average_matrix(end+1,:)= data_lp(5657: 5657+average_interval); % 5657 Trial 21
average_matrix(end+1,:)= data_lp(5931: 5931+average_interval); % 5931 Trial 22
average_matrix(end+1,:)= data_lp(6214: 6214+average_interval); % 6214 Trial 23
average_matrix(end+1,:)= data_lp(6487: 6487+average_interval); % 6487 Trial 24
average_matrix(end+1,:)= data_lp(6756: 6756+average_interval); % 6756 Trial 25
average_matrix(end+1,:)= data_lp(7050: 7050+average_interval); % 7050 Trial 26
average_matrix(end+1,:)= data_lp(7321: 7321+average_interval); % 7321 Trial 27
average_matrix(end+1,:)= data_lp(7612: 7612+average_interval); % 7612 Trial 28
average_matrix(end+1,:)= data_lp(7887: 7887+average_interval); % 7887 Trial 29
average_matrix(end+1,:)= data_lp(8168: 8168+average_interval); % 8168 Trial 30


average = mean(average_matrix,1);
xmarkers = [20 80 140]; % place markers at these x-values
ymarkers = average(xmarkers);

plot(1:251,average,xmarkers,ymarkers,'b*');

average_mean = mean(average,2);
axis([0 251 average_mean-0.04 average_mean+0.04 ])
line([20 20] , [average_mean-0.04 average_mean+0.04] , 'Color','r');
line([80 80] , [average_mean-0.04 average_mean+0.04] , 'Color','r');
line([140 140] , [average_mean-0.04 average_mean+0.04] , 'Color','r');

title('block2-1 deoxy c19  Average');

% Plot for channel 6 
subplot(4,4,11);
average_matrix = zeros(1, average_interval+ 1);
data_lp=lpf(data(:,6),filttype,fs,fcut,filtlen);

average_matrix(1,:)= data_lp(    1692: 1692+average_interval); % 1692 Trial 6
average_matrix(end+1,:)= data_lp(1964: 1964+average_interval); % 1964 Trial 7
average_matrix(end+1,:)= data_lp(2263: 2263+average_interval); % 2263 Trial 8
average_matrix(end+1,:)= data_lp(2543: 2543+average_interval); % 2543 Trial 9
average_matrix(end+1,:)= data_lp(2829: 2829+average_interval); % 2829 Trial 10
average_matrix(end+1,:)= data_lp(3111: 3111+average_interval); % 3111 Trial 12
average_matrix(end+1,:)= data_lp(3388: 3388+average_interval); % 3388 Trial 13
average_matrix(end+1,:)= data_lp(3676: 3676+average_interval); % 3676 Trial 14
average_matrix(end+1,:)= data_lp(3974: 3974+average_interval); % 3974 Trial 15
average_matrix(end+1,:)= data_lp(4244: 4244+average_interval); % 4244 Trial 16
average_matrix(end+1,:)= data_lp(4521: 4521+average_interval); % 4521 Trial 17
average_matrix(end+1,:)= data_lp(4804: 4804+average_interval); % 4804 Trial 18
average_matrix(end+1,:)= data_lp(5080: 5080+average_interval); % 5080 Trial 19
average_matrix(end+1,:)= data_lp(5372: 5372+average_interval); % 5372 Trial 20
average_matrix(end+1,:)= data_lp(5657: 5657+average_interval); % 5657 Trial 21
average_matrix(end+1,:)= data_lp(5931: 5931+average_interval); % 5931 Trial 22
average_matrix(end+1,:)= data_lp(6214: 6214+average_interval); % 6214 Trial 23
average_matrix(end+1,:)= data_lp(6487: 6487+average_interval); % 6487 Trial 24
average_matrix(end+1,:)= data_lp(6756: 6756+average_interval); % 6756 Trial 25
average_matrix(end+1,:)= data_lp(7050: 7050+average_interval); % 7050 Trial 26
average_matrix(end+1,:)= data_lp(7321: 7321+average_interval); % 7321 Trial 27
average_matrix(end+1,:)= data_lp(7612: 7612+average_interval); % 7612 Trial 28
average_matrix(end+1,:)= data_lp(7887: 7887+average_interval); % 7887 Trial 29
average_matrix(end+1,:)= data_lp(8168: 8168+average_interval); % 8168 Trial 30


average = mean(average_matrix,1);
xmarkers = [20 80 140]; % place markers at these x-values
ymarkers = average(xmarkers);

plot(1:251,average,xmarkers,ymarkers,'b*');

average_mean = mean(average,2);
axis([0 251 average_mean-0.04 average_mean+0.04 ])
line([20 20] , [average_mean-0.04 average_mean+0.04] , 'Color','r');
line([80 80] , [average_mean-0.04 average_mean+0.04] , 'Color','r');
line([140 140] , [average_mean-0.04 average_mean+0.04] , 'Color','r');

title('block2-1 deoxy c6  Average');

% plot for channel 18
subplot(4,4,12);
average_matrix = zeros(1, average_interval+ 1);
data_lp=lpf(data(:,18),filttype,fs,fcut,filtlen);

average_matrix(1,:)= data_lp(    1692: 1692+average_interval); % 1692 Trial 6
average_matrix(end+1,:)= data_lp(1964: 1964+average_interval); % 1964 Trial 7
average_matrix(end+1,:)= data_lp(2263: 2263+average_interval); % 2263 Trial 8
average_matrix(end+1,:)= data_lp(2543: 2543+average_interval); % 2543 Trial 9
average_matrix(end+1,:)= data_lp(2829: 2829+average_interval); % 2829 Trial 10
average_matrix(end+1,:)= data_lp(3111: 3111+average_interval); % 3111 Trial 12
average_matrix(end+1,:)= data_lp(3388: 3388+average_interval); % 3388 Trial 13
average_matrix(end+1,:)= data_lp(3676: 3676+average_interval); % 3676 Trial 14
average_matrix(end+1,:)= data_lp(3974: 3974+average_interval); % 3974 Trial 15
average_matrix(end+1,:)= data_lp(4244: 4244+average_interval); % 4244 Trial 16
average_matrix(end+1,:)= data_lp(4521: 4521+average_interval); % 4521 Trial 17
average_matrix(end+1,:)= data_lp(4804: 4804+average_interval); % 4804 Trial 18
average_matrix(end+1,:)= data_lp(5080: 5080+average_interval); % 5080 Trial 19
average_matrix(end+1,:)= data_lp(5372: 5372+average_interval); % 5372 Trial 20
average_matrix(end+1,:)= data_lp(5657: 5657+average_interval); % 5657 Trial 21
average_matrix(end+1,:)= data_lp(5931: 5931+average_interval); % 5931 Trial 22
average_matrix(end+1,:)= data_lp(6214: 6214+average_interval); % 6214 Trial 23
average_matrix(end+1,:)= data_lp(6487: 6487+average_interval); % 6487 Trial 24
average_matrix(end+1,:)= data_lp(6756: 6756+average_interval); % 6756 Trial 25
average_matrix(end+1,:)= data_lp(7050: 7050+average_interval); % 7050 Trial 26
average_matrix(end+1,:)= data_lp(7321: 7321+average_interval); % 7321 Trial 27
average_matrix(end+1,:)= data_lp(7612: 7612+average_interval); % 7612 Trial 28
average_matrix(end+1,:)= data_lp(7887: 7887+average_interval); % 7887 Trial 29
average_matrix(end+1,:)= data_lp(8168: 8168+average_interval); % 8168 Trial 30


average = mean(average_matrix,1);
xmarkers = [20 80 140]; % place markers at these x-values
ymarkers = average(xmarkers);

plot(1:251,average,xmarkers,ymarkers,'b*');

average_mean = mean(average,2);
axis([0 251 average_mean-0.04 average_mean+0.04 ])
line([20 20] , [average_mean-0.04 average_mean+0.04] , 'Color','r');
line([80 80] , [average_mean-0.04 average_mean+0.04] , 'Color','r');
line([140 140] , [average_mean-0.04 average_mean+0.04] , 'Color','r');

title('block2-1 deoxy c18  Average');

% plot for channel 15
subplot(4,4,13);
average_matrix = zeros(1, average_interval+ 1);
data_lp=lpf(data(:,15),filttype,fs,fcut,filtlen);

average_matrix(1,:)= data_lp(    1692: 1692+average_interval); % 1692 Trial 6
average_matrix(end+1,:)= data_lp(1964: 1964+average_interval); % 1964 Trial 7
average_matrix(end+1,:)= data_lp(2263: 2263+average_interval); % 2263 Trial 8
average_matrix(end+1,:)= data_lp(2543: 2543+average_interval); % 2543 Trial 9
average_matrix(end+1,:)= data_lp(2829: 2829+average_interval); % 2829 Trial 10
average_matrix(end+1,:)= data_lp(3111: 3111+average_interval); % 3111 Trial 12
average_matrix(end+1,:)= data_lp(3388: 3388+average_interval); % 3388 Trial 13
average_matrix(end+1,:)= data_lp(3676: 3676+average_interval); % 3676 Trial 14
average_matrix(end+1,:)= data_lp(3974: 3974+average_interval); % 3974 Trial 15
average_matrix(end+1,:)= data_lp(4244: 4244+average_interval); % 4244 Trial 16
average_matrix(end+1,:)= data_lp(4521: 4521+average_interval); % 4521 Trial 17
average_matrix(end+1,:)= data_lp(4804: 4804+average_interval); % 4804 Trial 18
average_matrix(end+1,:)= data_lp(5080: 5080+average_interval); % 5080 Trial 19
average_matrix(end+1,:)= data_lp(5372: 5372+average_interval); % 5372 Trial 20
average_matrix(end+1,:)= data_lp(5657: 5657+average_interval); % 5657 Trial 21
average_matrix(end+1,:)= data_lp(5931: 5931+average_interval); % 5931 Trial 22
average_matrix(end+1,:)= data_lp(6214: 6214+average_interval); % 6214 Trial 23
average_matrix(end+1,:)= data_lp(6487: 6487+average_interval); % 6487 Trial 24
average_matrix(end+1,:)= data_lp(6756: 6756+average_interval); % 6756 Trial 25
average_matrix(end+1,:)= data_lp(7050: 7050+average_interval); % 7050 Trial 26
average_matrix(end+1,:)= data_lp(7321: 7321+average_interval); % 7321 Trial 27
average_matrix(end+1,:)= data_lp(7612: 7612+average_interval); % 7612 Trial 28
average_matrix(end+1,:)= data_lp(7887: 7887+average_interval); % 7887 Trial 29
average_matrix(end+1,:)= data_lp(8168: 8168+average_interval); % 8168 Trial 30


average = mean(average_matrix,1);
xmarkers = [20 80 140]; % place markers at these x-values
ymarkers = average(xmarkers);

plot(1:251,average,xmarkers,ymarkers,'b*');

average_mean = mean(average,2);
axis([0 251 average_mean-0.04 average_mean+0.04 ])
line([20 20] , [average_mean-0.04 average_mean+0.04] , 'Color','r');
line([80 80] , [average_mean-0.04 average_mean+0.04] , 'Color','r');
line([140 140] , [average_mean-0.04 average_mean+0.04] , 'Color','r');

title('block2-1 deoxy c15  Average');

% plot for channel 8
subplot(4,4,14);
average_matrix = zeros(1, average_interval+ 1);
data_lp=lpf(data(:,8),filttype,fs,fcut,filtlen);

average_matrix(1,:)= data_lp(    1692: 1692+average_interval); % 1692 Trial 6
average_matrix(end+1,:)= data_lp(1964: 1964+average_interval); % 1964 Trial 7
average_matrix(end+1,:)= data_lp(2263: 2263+average_interval); % 2263 Trial 8
average_matrix(end+1,:)= data_lp(2543: 2543+average_interval); % 2543 Trial 9
average_matrix(end+1,:)= data_lp(2829: 2829+average_interval); % 2829 Trial 10
average_matrix(end+1,:)= data_lp(3111: 3111+average_interval); % 3111 Trial 12
average_matrix(end+1,:)= data_lp(3388: 3388+average_interval); % 3388 Trial 13
average_matrix(end+1,:)= data_lp(3676: 3676+average_interval); % 3676 Trial 14
average_matrix(end+1,:)= data_lp(3974: 3974+average_interval); % 3974 Trial 15
average_matrix(end+1,:)= data_lp(4244: 4244+average_interval); % 4244 Trial 16
average_matrix(end+1,:)= data_lp(4521: 4521+average_interval); % 4521 Trial 17
average_matrix(end+1,:)= data_lp(4804: 4804+average_interval); % 4804 Trial 18
average_matrix(end+1,:)= data_lp(5080: 5080+average_interval); % 5080 Trial 19
average_matrix(end+1,:)= data_lp(5372: 5372+average_interval); % 5372 Trial 20
average_matrix(end+1,:)= data_lp(5657: 5657+average_interval); % 5657 Trial 21
average_matrix(end+1,:)= data_lp(5931: 5931+average_interval); % 5931 Trial 22
average_matrix(end+1,:)= data_lp(6214: 6214+average_interval); % 6214 Trial 23
average_matrix(end+1,:)= data_lp(6487: 6487+average_interval); % 6487 Trial 24
average_matrix(end+1,:)= data_lp(6756: 6756+average_interval); % 6756 Trial 25
average_matrix(end+1,:)= data_lp(7050: 7050+average_interval); % 7050 Trial 26
average_matrix(end+1,:)= data_lp(7321: 7321+average_interval); % 7321 Trial 27
average_matrix(end+1,:)= data_lp(7612: 7612+average_interval); % 7612 Trial 28
average_matrix(end+1,:)= data_lp(7887: 7887+average_interval); % 7887 Trial 29
average_matrix(end+1,:)= data_lp(8168: 8168+average_interval); % 8168 Trial 30


average = mean(average_matrix,1);
xmarkers = [20 80 140]; % place markers at these x-values
ymarkers = average(xmarkers);

plot(1:251,average,xmarkers,ymarkers,'b*');

average_mean = mean(average,2);
axis([0 251 average_mean-0.04 average_mean+0.04 ])
line([20 20] , [average_mean-0.04 average_mean+0.04] , 'Color','r');
line([80 80] , [average_mean-0.04 average_mean+0.04] , 'Color','r');
line([140 140] , [average_mean-0.04 average_mean+0.04] , 'Color','r');

title('block2-1 deoxy c8  Average');

%plot for channel 22
subplot(4,4,15);
average_matrix = zeros(1, average_interval+ 1);
data_lp=lpf(data(:,22),filttype,fs,fcut,filtlen);

average_matrix(1,:)= data_lp(    1692: 1692+average_interval); % 1692 Trial 6
average_matrix(end+1,:)= data_lp(1964: 1964+average_interval); % 1964 Trial 7
average_matrix(end+1,:)= data_lp(2263: 2263+average_interval); % 2263 Trial 8
average_matrix(end+1,:)= data_lp(2543: 2543+average_interval); % 2543 Trial 9
average_matrix(end+1,:)= data_lp(2829: 2829+average_interval); % 2829 Trial 10
average_matrix(end+1,:)= data_lp(3111: 3111+average_interval); % 3111 Trial 12
average_matrix(end+1,:)= data_lp(3388: 3388+average_interval); % 3388 Trial 13
average_matrix(end+1,:)= data_lp(3676: 3676+average_interval); % 3676 Trial 14
average_matrix(end+1,:)= data_lp(3974: 3974+average_interval); % 3974 Trial 15
average_matrix(end+1,:)= data_lp(4244: 4244+average_interval); % 4244 Trial 16
average_matrix(end+1,:)= data_lp(4521: 4521+average_interval); % 4521 Trial 17
average_matrix(end+1,:)= data_lp(4804: 4804+average_interval); % 4804 Trial 18
average_matrix(end+1,:)= data_lp(5080: 5080+average_interval); % 5080 Trial 19
average_matrix(end+1,:)= data_lp(5372: 5372+average_interval); % 5372 Trial 20
average_matrix(end+1,:)= data_lp(5657: 5657+average_interval); % 5657 Trial 21
average_matrix(end+1,:)= data_lp(5931: 5931+average_interval); % 5931 Trial 22
average_matrix(end+1,:)= data_lp(6214: 6214+average_interval); % 6214 Trial 23
average_matrix(end+1,:)= data_lp(6487: 6487+average_interval); % 6487 Trial 24
average_matrix(end+1,:)= data_lp(6756: 6756+average_interval); % 6756 Trial 25
average_matrix(end+1,:)= data_lp(7050: 7050+average_interval); % 7050 Trial 26
average_matrix(end+1,:)= data_lp(7321: 7321+average_interval); % 7321 Trial 27
average_matrix(end+1,:)= data_lp(7612: 7612+average_interval); % 7612 Trial 28
average_matrix(end+1,:)= data_lp(7887: 7887+average_interval); % 7887 Trial 29
average_matrix(end+1,:)= data_lp(8168: 8168+average_interval); % 8168 Trial 30


average = mean(average_matrix,1);
xmarkers = [20 80 140]; % place markers at these x-values
ymarkers = average(xmarkers);

plot(1:251,average,xmarkers,ymarkers,'b*');

average_mean = mean(average,2);
axis([0 251 average_mean-0.04 average_mean+0.04 ])
line([20 20] , [average_mean-0.04 average_mean+0.04] , 'Color','r');
line([80 80] , [average_mean-0.04 average_mean+0.04] , 'Color','r');
line([140 140] , [average_mean-0.04 average_mean+0.04] , 'Color','r');

title('block2-1 deoxy c22  Average');

% plot for channel 5
subplot(4,4,16);
average_matrix = zeros(1, average_interval+ 1);
data_lp=lpf(data(:,5),filttype,fs,fcut,filtlen);

average_matrix(1,:)= data_lp(    1692: 1692+average_interval); % 1692 Trial 6
average_matrix(end+1,:)= data_lp(1964: 1964+average_interval); % 1964 Trial 7
average_matrix(end+1,:)= data_lp(2263: 2263+average_interval); % 2263 Trial 8
average_matrix(end+1,:)= data_lp(2543: 2543+average_interval); % 2543 Trial 9
average_matrix(end+1,:)= data_lp(2829: 2829+average_interval); % 2829 Trial 10
average_matrix(end+1,:)= data_lp(3111: 3111+average_interval); % 3111 Trial 12
average_matrix(end+1,:)= data_lp(3388: 3388+average_interval); % 3388 Trial 13
average_matrix(end+1,:)= data_lp(3676: 3676+average_interval); % 3676 Trial 14
average_matrix(end+1,:)= data_lp(3974: 3974+average_interval); % 3974 Trial 15
average_matrix(end+1,:)= data_lp(4244: 4244+average_interval); % 4244 Trial 16
average_matrix(end+1,:)= data_lp(4521: 4521+average_interval); % 4521 Trial 17
average_matrix(end+1,:)= data_lp(4804: 4804+average_interval); % 4804 Trial 18
average_matrix(end+1,:)= data_lp(5080: 5080+average_interval); % 5080 Trial 19
average_matrix(end+1,:)= data_lp(5372: 5372+average_interval); % 5372 Trial 20
average_matrix(end+1,:)= data_lp(5657: 5657+average_interval); % 5657 Trial 21
average_matrix(end+1,:)= data_lp(5931: 5931+average_interval); % 5931 Trial 22
average_matrix(end+1,:)= data_lp(6214: 6214+average_interval); % 6214 Trial 23
average_matrix(end+1,:)= data_lp(6487: 6487+average_interval); % 6487 Trial 24
average_matrix(end+1,:)= data_lp(6756: 6756+average_interval); % 6756 Trial 25
average_matrix(end+1,:)= data_lp(7050: 7050+average_interval); % 7050 Trial 26
average_matrix(end+1,:)= data_lp(7321: 7321+average_interval); % 7321 Trial 27
average_matrix(end+1,:)= data_lp(7612: 7612+average_interval); % 7612 Trial 28
average_matrix(end+1,:)= data_lp(7887: 7887+average_interval); % 7887 Trial 29
average_matrix(end+1,:)= data_lp(8168: 8168+average_interval); % 8168 Trial 30


average = mean(average_matrix,1);
xmarkers = [20 80 140]; % place markers at these x-values
ymarkers = average(xmarkers);

plot(1:251,average,xmarkers,ymarkers,'b*');

average_mean = mean(average,2);
axis([0 251 average_mean-0.04 average_mean+0.04 ])
line([20 20] , [average_mean-0.04 average_mean+0.04] , 'Color','r');
line([80 80] , [average_mean-0.04 average_mean+0.04] , 'Color','r');
line([140 140] , [average_mean-0.04 average_mean+0.04] , 'Color','r');

title('block2-1 deoxy c5  Average');
