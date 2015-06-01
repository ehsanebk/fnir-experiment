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

average_matrix12 = zeros(1, average_interval+ 1);
average_matrix14 = zeros(1, average_interval+ 1);

data_lp12=lpf(data(:,12),filttype,fs,fcut,filtlen);
data_lp14=lpf(data(:,14),filttype,fs,fcut,filtlen);

average_matrix12(1,:)= data_lp12(    1692: 1692+average_interval); % 1692 Trial 6
average_matrix12(end+1,:)= data_lp12(1964: 1964+average_interval); % 1964 Trial 7
average_matrix12(end+1,:)= data_lp12(2263: 2263+average_interval); % 2263 Trial 8
average_matrix12(end+1,:)= data_lp12(2543: 2543+average_interval); % 2543 Trial 9
average_matrix12(end+1,:)= data_lp12(2829: 2829+average_interval); % 2829 Trial 10
average_matrix12(end+1,:)= data_lp12(3111: 3111+average_interval); % 3111 Trial 12
average_matrix12(end+1,:)= data_lp12(3388: 3388+average_interval); % 3388 Trial 13
average_matrix12(end+1,:)= data_lp12(3676: 3676+average_interval); % 3676 Trial 14
average_matrix12(end+1,:)= data_lp12(3974: 3974+average_interval); % 3974 Trial 15
average_matrix12(end+1,:)= data_lp12(4244: 4244+average_interval); % 4244 Trial 16
average_matrix12(end+1,:)= data_lp12(4521: 4521+average_interval); % 4521 Trial 17
average_matrix12(end+1,:)= data_lp12(4804: 4804+average_interval); % 4804 Trial 18
average_matrix12(end+1,:)= data_lp12(5080: 5080+average_interval); % 5080 Trial 19
average_matrix12(end+1,:)= data_lp12(5372: 5372+average_interval); % 5372 Trial 20
average_matrix12(end+1,:)= data_lp12(5657: 5657+average_interval); % 5657 Trial 21
average_matrix12(end+1,:)= data_lp12(5931: 5931+average_interval); % 5931 Trial 22
average_matrix12(end+1,:)= data_lp12(6214: 6214+average_interval); % 6214 Trial 23
average_matrix12(end+1,:)= data_lp12(6487: 6487+average_interval); % 6487 Trial 24
average_matrix12(end+1,:)= data_lp12(6756: 6756+average_interval); % 6756 Trial 25
average_matrix12(end+1,:)= data_lp12(7050: 7050+average_interval); % 7050 Trial 26
average_matrix12(end+1,:)= data_lp12(7321: 7321+average_interval); % 7321 Trial 27
average_matrix12(end+1,:)= data_lp12(7612: 7612+average_interval); % 7612 Trial 28
average_matrix12(end+1,:)= data_lp12(7887: 7887+average_interval); % 7887 Trial 29
average_matrix12(end+1,:)= data_lp12(8168: 8168+average_interval); % 8168 Trial 30


average_matrix14(1,:)= data_lp14(    1692: 1692+average_interval); % 1692 Trial 6
average_matrix14(end+1,:)= data_lp14(1964: 1964+average_interval); % 1964 Trial 7
average_matrix14(end+1,:)= data_lp14(2263: 2263+average_interval); % 2263 Trial 8
average_matrix14(end+1,:)= data_lp14(2543: 2543+average_interval); % 2543 Trial 9
average_matrix14(end+1,:)= data_lp14(2829: 2829+average_interval); % 2829 Trial 10
average_matrix14(end+1,:)= data_lp14(3111: 3111+average_interval); % 3111 Trial 12
average_matrix14(end+1,:)= data_lp14(3388: 3388+average_interval); % 3388 Trial 13
average_matrix14(end+1,:)= data_lp14(3676: 3676+average_interval); % 3676 Trial 14
average_matrix14(end+1,:)= data_lp14(3974: 3974+average_interval); % 3974 Trial 15
average_matrix14(end+1,:)= data_lp14(4244: 4244+average_interval); % 4244 Trial 16
average_matrix14(end+1,:)= data_lp14(4521: 4521+average_interval); % 4521 Trial 17
average_matrix14(end+1,:)= data_lp14(4804: 4804+average_interval); % 4804 Trial 18
average_matrix14(end+1,:)= data_lp14(5080: 5080+average_interval); % 5080 Trial 19
average_matrix14(end+1,:)= data_lp14(5372: 5372+average_interval); % 5372 Trial 20
average_matrix14(end+1,:)= data_lp14(5657: 5657+average_interval); % 5657 Trial 21
average_matrix14(end+1,:)= data_lp14(5931: 5931+average_interval); % 5931 Trial 22
average_matrix14(end+1,:)= data_lp14(6214: 6214+average_interval); % 6214 Trial 23
average_matrix14(end+1,:)= data_lp14(6487: 6487+average_interval); % 6487 Trial 24
average_matrix14(end+1,:)= data_lp14(6756: 6756+average_interval); % 6756 Trial 25
average_matrix14(end+1,:)= data_lp14(7050: 7050+average_interval); % 7050 Trial 26
average_matrix14(end+1,:)= data_lp14(7321: 7321+average_interval); % 7321 Trial 27
average_matrix14(end+1,:)= data_lp14(7612: 7612+average_interval); % 7612 Trial 28
average_matrix14(end+1,:)= data_lp14(7887: 7887+average_interval); % 7887 Trial 29
average_matrix14(end+1,:)= data_lp14(8168: 8168+average_interval); % 8168 Trial 30

plot(mean(average_matrix12,1));
plot(mean(average_matrix14,1));

line([20 20] , [-0.17 -0.07] , 'Color','r');
line([80 80] , [-0.17 -0.07] , 'Color','r');
line([140 140] , [-0.17 -0.07] , 'Color','r');




title('block2-1 deoxy 12 14 Average');

legend('Channel 12','Channel 14');


hold off


% Ploting the average during the periods for channel 11 and 13 which has
% the most fluctuation in the range of the session 8 to 30
figure
hold on

average_matrix11 = zeros(1, average_interval+ 1);
average_matrix13 = zeros(1, average_interval+ 1);

data_lp11=lpf(data(:,11),filttype,fs,fcut,filtlen);
data_lp13=lpf(data(:,13),filttype,fs,fcut,filtlen);

average_matrix11(1,:)=     data_lp11(1692: 1692+average_interval); % 1692 Trial 6
average_matrix11(end+1,:)= data_lp11(1964: 1964+average_interval); % 1964 Trial 7
average_matrix11(end+1,:)= data_lp11(2263: 2263+average_interval); % 2263 Trial 8
average_matrix11(end+1,:)= data_lp11(2543: 2543+average_interval); % 2543 Trial 9
average_matrix11(end+1,:)= data_lp11(2829: 2829+average_interval); % 2829 Trial 10
average_matrix11(end+1,:)= data_lp11(3111: 3111+average_interval); % 3111 Trial 12
average_matrix11(end+1,:)= data_lp11(3388: 3388+average_interval); % 3388 Trial 13
average_matrix11(end+1,:)= data_lp11(3676: 3676+average_interval); % 3676 Trial 14
average_matrix11(end+1,:)= data_lp11(3974: 3974+average_interval); % 3974 Trial 15
average_matrix11(end+1,:)= data_lp11(4244: 4244+average_interval); % 4244 Trial 16
average_matrix11(end+1,:)= data_lp11(4521: 4521+average_interval); % 4521 Trial 17
average_matrix11(end+1,:)= data_lp11(4804: 4804+average_interval); % 4804 Trial 18
average_matrix11(end+1,:)= data_lp11(5080: 5080+average_interval); % 5080 Trial 19
average_matrix11(end+1,:)= data_lp11(5372: 5372+average_interval); % 5372 Trial 20
average_matrix11(end+1,:)= data_lp11(5657: 5657+average_interval); % 5657 Trial 21
average_matrix11(end+1,:)= data_lp11(5931: 5931+average_interval); % 5931 Trial 22
average_matrix11(end+1,:)= data_lp11(6214: 6214+average_interval); % 6214 Trial 23
average_matrix11(end+1,:)= data_lp11(6487: 6487+average_interval); % 6487 Trial 24
average_matrix11(end+1,:)= data_lp11(6756: 6756+average_interval); % 6756 Trial 25
average_matrix11(end+1,:)= data_lp11(7050: 7050+average_interval); % 7050 Trial 26
average_matrix11(end+1,:)= data_lp11(7321: 7321+average_interval); % 7321 Trial 27
average_matrix11(end+1,:)= data_lp11(7612: 7612+average_interval); % 7612 Trial 28
average_matrix11(end+1,:)= data_lp11(7887: 7887+average_interval); % 7887 Trial 29
average_matrix11(end+1,:)= data_lp11(8168: 8168+average_interval); % 8168 Trial 30


average_matrix13(1,:)=     data_lp13(1692: 1692+average_interval); % 1692 Trial 6
average_matrix13(end+1,:)= data_lp13(1964: 1964+average_interval); % 1964 Trial 7
average_matrix13(end+1,:)= data_lp13(2263: 2263+average_interval); % 2263 Trial 8
average_matrix13(end+1,:)= data_lp13(2543: 2543+average_interval); % 2543 Trial 9
average_matrix13(end+1,:)= data_lp13(2829: 2829+average_interval); % 2829 Trial 10
average_matrix13(end+1,:)= data_lp13(3111: 3111+average_interval); % 3111 Trial 12
average_matrix13(end+1,:)= data_lp13(3388: 3388+average_interval); % 3388 Trial 13
average_matrix13(end+1,:)= data_lp13(3676: 3676+average_interval); % 3676 Trial 14
average_matrix13(end+1,:)= data_lp13(3974: 3974+average_interval); % 3974 Trial 15
average_matrix13(end+1,:)= data_lp13(4244: 4244+average_interval); % 4244 Trial 16
average_matrix13(end+1,:)= data_lp13(4521: 4521+average_interval); % 4521 Trial 17
average_matrix13(end+1,:)= data_lp13(4804: 4804+average_interval); % 4804 Trial 18
average_matrix13(end+1,:)= data_lp13(5080: 5080+average_interval); % 5080 Trial 19
average_matrix13(end+1,:)= data_lp13(5372: 5372+average_interval); % 5372 Trial 20
average_matrix13(end+1,:)= data_lp13(5657: 5657+average_interval); % 5657 Trial 21
average_matrix13(end+1,:)= data_lp13(5931: 5931+average_interval); % 5931 Trial 22
average_matrix13(end+1,:)= data_lp13(6214: 6214+average_interval); % 6214 Trial 23
average_matrix13(end+1,:)= data_lp13(6487: 6487+average_interval); % 6487 Trial 24
average_matrix13(end+1,:)= data_lp13(6756: 6756+average_interval); % 6756 Trial 25
average_matrix13(end+1,:)= data_lp13(7050: 7050+average_interval); % 7050 Trial 26
average_matrix13(end+1,:)= data_lp13(7321: 7321+average_interval); % 7321 Trial 27
average_matrix13(end+1,:)= data_lp13(7612: 7612+average_interval); % 7612 Trial 28
average_matrix13(end+1,:)= data_lp13(7887: 7887+average_interval); % 7887 Trial 29
average_matrix13(end+1,:)= data_lp13(8168: 8168+average_interval); % 8168 Trial 30

plot(mean(average_matrix11,1));
plot(mean(average_matrix13,1));

line([20 20] , [-0.3 0.4] , 'Color','r');
line([80 80] , [-0.3 0.4] , 'Color','r');
line([140 140] , [-0.3 0.4] , 'Color','r');


title('block2-1 deoxy 11 13 Average');
legend('Channel 11','Channel 13');
hold off


% Plot for channel 10 17


% Ploting the average during the periods for channel 10 and 17 which has
% the most fluctuation in the range of the session 8 to 30
figure
hold on

average_matrix10 = zeros(1, average_interval+ 1);
average_matrix17 = zeros(1, average_interval+ 1);

data_lp10=lpf(data(:,10),filttype,fs,fcut,filtlen);
data_lp17=lpf(data(:,17),filttype,fs,fcut,filtlen);

average_matrix10(1,:)=     data_lp10(1692: 1692+average_interval); % 1692 Trial 6
average_matrix10(end+1,:)= data_lp10(1964: 1964+average_interval); % 1964 Trial 7
average_matrix10(end+1,:)= data_lp10(2263: 2263+average_interval); % 2263 Trial 8
average_matrix10(end+1,:)= data_lp10(2543: 2543+average_interval); % 2543 Trial 9
average_matrix10(end+1,:)= data_lp10(2829: 2829+average_interval); % 2829 Trial 10
average_matrix10(end+1,:)= data_lp10(3111: 3111+average_interval); % 3111 Trial 12
average_matrix10(end+1,:)= data_lp10(3388: 3388+average_interval); % 3388 Trial 13
average_matrix10(end+1,:)= data_lp10(3676: 3676+average_interval); % 3676 Trial 14
average_matrix10(end+1,:)= data_lp10(3974: 3974+average_interval); % 3974 Trial 15
average_matrix10(end+1,:)= data_lp10(4244: 4244+average_interval); % 4244 Trial 16
average_matrix10(end+1,:)= data_lp10(4521: 4521+average_interval); % 4521 Trial 17
average_matrix10(end+1,:)= data_lp10(4804: 4804+average_interval); % 4804 Trial 18
average_matrix10(end+1,:)= data_lp10(5080: 5080+average_interval); % 5080 Trial 19
average_matrix10(end+1,:)= data_lp10(5372: 5372+average_interval); % 5372 Trial 20
average_matrix10(end+1,:)= data_lp10(5657: 5657+average_interval); % 5657 Trial 21
average_matrix10(end+1,:)= data_lp10(5931: 5931+average_interval); % 5931 Trial 22
average_matrix10(end+1,:)= data_lp10(6214: 6214+average_interval); % 6214 Trial 23
average_matrix10(end+1,:)= data_lp10(6487: 6487+average_interval); % 6487 Trial 24
average_matrix10(end+1,:)= data_lp10(6756: 6756+average_interval); % 6756 Trial 25
average_matrix10(end+1,:)= data_lp10(7050: 7050+average_interval); % 7050 Trial 26
average_matrix10(end+1,:)= data_lp10(7321: 7321+average_interval); % 7321 Trial 27
average_matrix10(end+1,:)= data_lp10(7612: 7612+average_interval); % 7612 Trial 28
average_matrix10(end+1,:)= data_lp10(7887: 7887+average_interval); % 7887 Trial 29
average_matrix10(end+1,:)= data_lp10(8168: 8168+average_interval); % 8168 Trial 30


average_matrix17(1,:)=     data_lp17(1692: 1692+average_interval); % 1692 Trial 6
average_matrix17(end+1,:)= data_lp17(1964: 1964+average_interval); % 1964 Trial 7
average_matrix17(end+1,:)= data_lp17(2263: 2263+average_interval); % 2263 Trial 8
average_matrix17(end+1,:)= data_lp17(2543: 2543+average_interval); % 2543 Trial 9
average_matrix17(end+1,:)= data_lp17(2829: 2829+average_interval); % 2829 Trial 10
average_matrix17(end+1,:)= data_lp17(3111: 3111+average_interval); % 3111 Trial 12
average_matrix17(end+1,:)= data_lp17(3388: 3388+average_interval); % 3388 Trial 13
average_matrix17(end+1,:)= data_lp17(3676: 3676+average_interval); % 3676 Trial 14
average_matrix17(end+1,:)= data_lp17(3974: 3974+average_interval); % 3974 Trial 15
average_matrix17(end+1,:)= data_lp17(4244: 4244+average_interval); % 4244 Trial 16
average_matrix17(end+1,:)= data_lp17(4521: 4521+average_interval); % 4521 Trial 17
average_matrix17(end+1,:)= data_lp17(4804: 4804+average_interval); % 4804 Trial 18
average_matrix17(end+1,:)= data_lp17(5080: 5080+average_interval); % 5080 Trial 19
average_matrix17(end+1,:)= data_lp17(5372: 5372+average_interval); % 5372 Trial 20
average_matrix17(end+1,:)= data_lp17(5657: 5657+average_interval); % 5657 Trial 21
average_matrix17(end+1,:)= data_lp17(5931: 5931+average_interval); % 5931 Trial 22
average_matrix17(end+1,:)= data_lp17(6214: 6214+average_interval); % 6214 Trial 23
average_matrix17(end+1,:)= data_lp17(6487: 6487+average_interval); % 6487 Trial 24
average_matrix17(end+1,:)= data_lp17(6756: 6756+average_interval); % 6756 Trial 25
average_matrix17(end+1,:)= data_lp17(7050: 7050+average_interval); % 7050 Trial 26
average_matrix17(end+1,:)= data_lp17(7321: 7321+average_interval); % 7321 Trial 27
average_matrix17(end+1,:)= data_lp17(7612: 7612+average_interval); % 7612 Trial 28
average_matrix17(end+1,:)= data_lp17(7887: 7887+average_interval); % 7887 Trial 29
average_matrix17(end+1,:)= data_lp17(8168: 8168+average_interval); % 8168 Trial 30

plot(mean(average_matrix10,1));
plot(mean(average_matrix17,1));

line([20 20] , [-0.08 0.04] , 'Color','r');
line([80 80] , [-0.08 0.04] , 'Color','r');
line([140 140] , [-0.08 0.04] , 'Color','r');

title('block2-1 deoxy 10 17 Average');
legend('Channel 10','Channel 17');
hold off

% Plot for channel 9 16

% Ploting the average during the periods for channel 9 and 16 which has
% the most fluctuation in the range of the session 8 to 30
figure
hold on

average_matrix9 = zeros(1, average_interval+ 1);
average_matrix16 = zeros(1, average_interval+ 1);

data_lp9=lpf(data(:,9),filttype,fs,fcut,filtlen);
data_lp16=lpf(data(:,16),filttype,fs,fcut,filtlen);

average_matrix9(1,:)=     data_lp9(1692: 1692+average_interval); % 1692 Trial 6
average_matrix9(end+1,:)= data_lp9(1964: 1964+average_interval); % 1964 Trial 7
average_matrix9(end+1,:)= data_lp9(2263: 2263+average_interval); % 2263 Trial 8
average_matrix9(end+1,:)= data_lp9(2543: 2543+average_interval); % 2543 Trial 9
average_matrix9(end+1,:)= data_lp9(2829: 2829+average_interval); % 2829 Trial 10
average_matrix9(end+1,:)= data_lp9(3111: 3111+average_interval); % 3111 Trial 12
average_matrix9(end+1,:)= data_lp9(3388: 3388+average_interval); % 3388 Trial 13
average_matrix9(end+1,:)= data_lp9(3676: 3676+average_interval); % 3676 Trial 14
average_matrix9(end+1,:)= data_lp9(3974: 3974+average_interval); % 3974 Trial 15
average_matrix9(end+1,:)= data_lp9(4244: 4244+average_interval); % 4244 Trial 16
average_matrix9(end+1,:)= data_lp9(4521: 4521+average_interval); % 4521 Trial 17
average_matrix9(end+1,:)= data_lp9(4804: 4804+average_interval); % 4804 Trial 18
average_matrix9(end+1,:)= data_lp9(5080: 5080+average_interval); % 5080 Trial 19
average_matrix9(end+1,:)= data_lp9(5372: 5372+average_interval); % 5372 Trial 20
average_matrix9(end+1,:)= data_lp9(5657: 5657+average_interval); % 5657 Trial 21
average_matrix9(end+1,:)= data_lp9(5931: 5931+average_interval); % 5931 Trial 22
average_matrix9(end+1,:)= data_lp9(6214: 6214+average_interval); % 6214 Trial 23
average_matrix9(end+1,:)= data_lp9(6487: 6487+average_interval); % 6487 Trial 24
average_matrix9(end+1,:)= data_lp9(6756: 6756+average_interval); % 6756 Trial 25
average_matrix9(end+1,:)= data_lp9(7050: 7050+average_interval); % 7050 Trial 26
average_matrix9(end+1,:)= data_lp9(7321: 7321+average_interval); % 7321 Trial 27
average_matrix9(end+1,:)= data_lp9(7612: 7612+average_interval); % 7612 Trial 28
average_matrix9(end+1,:)= data_lp9(7887: 7887+average_interval); % 7887 Trial 29
average_matrix9(end+1,:)= data_lp9(8168: 8168+average_interval); % 8168 Trial 30


average_matrix16(1,:)=     data_lp16(1692: 1692+average_interval); % 1692 Trial 6
average_matrix16(end+1,:)= data_lp16(1964: 1964+average_interval); % 1964 Trial 7
average_matrix16(end+1,:)= data_lp16(2263: 2263+average_interval); % 2263 Trial 8
average_matrix16(end+1,:)= data_lp16(2543: 2543+average_interval); % 2543 Trial 9
average_matrix16(end+1,:)= data_lp16(2829: 2829+average_interval); % 2829 Trial 10
average_matrix16(end+1,:)= data_lp16(3111: 3111+average_interval); % 3111 Trial 12
average_matrix16(end+1,:)= data_lp16(3388: 3388+average_interval); % 3388 Trial 13
average_matrix16(end+1,:)= data_lp16(3676: 3676+average_interval); % 3676 Trial 14
average_matrix16(end+1,:)= data_lp16(3974: 3974+average_interval); % 3974 Trial 15
average_matrix16(end+1,:)= data_lp16(4244: 4244+average_interval); % 4244 Trial 16
average_matrix16(end+1,:)= data_lp16(4521: 4521+average_interval); % 4521 Trial 17
average_matrix16(end+1,:)= data_lp16(4804: 4804+average_interval); % 4804 Trial 18
average_matrix16(end+1,:)= data_lp16(5080: 5080+average_interval); % 5080 Trial 19
average_matrix16(end+1,:)= data_lp16(5372: 5372+average_interval); % 5372 Trial 20
average_matrix16(end+1,:)= data_lp16(5657: 5657+average_interval); % 5657 Trial 21
average_matrix16(end+1,:)= data_lp16(5931: 5931+average_interval); % 5931 Trial 22
average_matrix16(end+1,:)= data_lp16(6214: 6214+average_interval); % 6214 Trial 23
average_matrix16(end+1,:)= data_lp16(6487: 6487+average_interval); % 6487 Trial 24
average_matrix16(end+1,:)= data_lp16(6756: 6756+average_interval); % 6756 Trial 25
average_matrix16(end+1,:)= data_lp16(7050: 7050+average_interval); % 7050 Trial 26
average_matrix16(end+1,:)= data_lp16(7321: 7321+average_interval); % 7321 Trial 27
average_matrix16(end+1,:)= data_lp16(7612: 7612+average_interval); % 7612 Trial 28
average_matrix16(end+1,:)= data_lp16(7887: 7887+average_interval); % 7887 Trial 29
average_matrix16(end+1,:)= data_lp16(8168: 8168+average_interval); % 8168 Trial 30

plot(mean(average_matrix9,1));
plot(mean(average_matrix16,1));

line([20 20] , [-0.25 0.15] , 'Color','r');
line([80 80] , [-0.25 0.15] , 'Color','r');
line([140 140] , [-0.25 0.15] , 'Color','r');

title('block2-1 deoxy 9 16 Average');
legend('Channel 9','Channel 16');
hold off

