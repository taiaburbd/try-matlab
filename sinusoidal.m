clear all 

t=0:0.01:10;
f=1;
x=sin(2*pi*f*t)
y=cos(2*pi*f*t)
plot(t,x,t,y)
xlabel("Amplitute")
ylabel("Time")
title("Sine Wave")