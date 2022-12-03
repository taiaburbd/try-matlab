clear all
%Am: message signal amplitude 
Am=1;
%Ac: carrier signal amplitude
Ac=2;
%fm: message signal frequency 
fm=2;
%fc: carrier signal frequency 
fc=50;
%t: time
t=0:0.001:1;
%k: frequency sensitivity
k=0.8;
msg_signal=Am*sin(2*pi*fm*t);
carrier_signal=Ac*cos(2*pi*fc*t);
%y equal modulation signal
%Y(t)=[1+k*m(t)*c(t)]
y=(1+k*msg_signal).*carrier_signal;
%first sub plot
subplot(3,1,1)
plot(t,msg_signal)
title("Message signal")
%second sub plot
subplot(3,1,2)
plot(t,carrier_signal)
title('Carrier Signal')
%third sub plot
subplot(3,1,3)
plot(t,y)
title("Modulated Signal")
