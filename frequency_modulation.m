clear all
%Am: message signal amplitude 
Am=1;
%Ac: carrier signal amplitude
Ac=2;
%fm: message signal frequency 
fm=2;
%fc: carrier signal frequency 
fc=20;
%t: time
t=0:0.001:1;
%k: frequency sensitivity
k=14;
%β=k*Am/fm
%B:modulation index
B=k*Am/fm;
msg_signal=Am*sin(2*pi*fm*t);
carrier_signal=Ac*cos(2*pi*fc*t);
%Y(t)=Ac*cos[2*pi*fc*t+β*sin(2*pi*fm*t)]
%y equal modulation signal
y=Ac*cos(2*pi*fc*t+B*(sin(2*pi*fm*t)));
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
