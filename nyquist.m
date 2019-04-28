
clear all;
close all;
clc;

f=100;
fs=10;

t=0:0.1:100;
ts=0:10:1000;

x=sin(2*3.14*f*t);
subplot(2,1,1);
plot(t,x);

y=sin(2*3.14*f*ts/fs);
subplot(2,1,2);
stem(ts,y);

