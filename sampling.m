
f=1000;
%signal frequency
fs=5e5;
%Initially oversampled to produce a smooth plot
nCyl=5;
t=0:1/fs:nCyl*1/f;
y=sin(2*pi*f*t);
subplot(3,1,1);
plot(t,y,'b');
title('Continuous sinusoidal signal of frequency=1000Hz');
xlabel('Time(sec)');
ylabel('Amplitude Y(t)');
axis([0 nCyl/f -1.1 1.1])

fs1=4000;
t1=0:1/fs1:nCyl*1/f;
y1=sin(2*pi*f*t1);

fs2=8000;
t2=0:1/fs2:nCyl*1/f;
y2=sin(2*pi*f*t2);

% optional third frequency sampling of real continious wave
fs3=10000;
t3=0:1/fs3:nCyl*1/f;
y3=sin(2*pi*f*t3);

subplot(3,1,2)
plot(t,y,'r');
hold on;
plot(t1,y1,':');
hold on;
plot(t3,y3,':');
hold on;

stem(t1,y1,'b','filled')
title(' Sampling 1');
xlabel('Time(sec)');
ylabel('Amp Y(t)');
axis([0 nCyl/f -1.1 1.1])

subplot(3,1,3)
plot(t,y,'r');
hold on;
plot(t2,y2,':');
hold on;


stem(t2,y2,'b','filled')
title('Sampling 2 ');
xlabel('Time(sec)');
ylabel('Amplitude Y(t)');
axis([0 nCyl/f -1.1 1.1]);

print('sampling','-dpng');
