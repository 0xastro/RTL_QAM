%% Matlab Code to Verify The Behavior of 4-QAM Modulation Scheme

clc;
clear all;
close all;
fprintf("/*" + ...
    "*****************************************************************\n" + ...
    "* 4-QAM Modulation:\n" + ...
    "* Goal: Waveform and Constellation Verification,\n" + ...
    "* mainly to verify and model the behaviour of M-ary QAM \n" + ...
    "* Author: Astro\n" + ...
    "* Delievered to: Digital System Design\n" + ...
    "*****************************************************************");
% Number of Symbols is 4, each contains 2 bits [log(M)=2] /%Log base 2%/
M=4;
fprintf('\n');

%% @Dummy driver
% to generate a random input sequence to be processed by the Mapper and Modulator

% Generate a Binary Frame of length equal to 8
% Bit Stream and then do segmentation to process 
% Each two bits at a time [@Frame Length =8]
nbit=16;                       
msg=round(rand(nbit,1));           
fprintf(" Frame Size at transmitter side = %d\n",nbit);
%representation of transmitting binary information as digital signal
x=msg;
bp=.000001; % dummy bit period.
bit=[]; 
for n=1:1:length(x)
    if x(n)==1;
       se=ones(1,100);
    else x(n)==0;
        se=zeros(1,100);
    end
     bit=[bit se];
end

t1=bp/100:bp/100:100*length(x)*(bp/100);
figure(1)
plot(t1,bit,'lineWidth',2.5);grid on;
axis([ 0 bp*length(x) -.5 1.5]);
ylabel('amplitude(volt)');
xlabel(' time(sec)');
title('transmitting information as digital signal');

% binary information convert into symbolic form for M-array QAM modulation
M=M;                                             % order of QAM modulation
msg_reshape=reshape(msg,log2(M),nbit/log2(M))';
disp(' information are reshaped for convert symbolic form');
disp(msg_reshape);
fprintf('\n\n');
size(msg_reshape);
for(j=1:1:nbit/log2(M))
   for(i=1:1:log2(M))
       a(j,i)=num2str(msg_reshape(j,i));
   end
end
as=bin2dec(a);
ass=as';
figure(2)

stem(ass,'Linewidth',2.0);
title('serial symbol for M-array QAM modulation at transmitter');
xlabel('n(discrete time)');
ylabel(' magnitude');
disp('symbolic form information for M-array QAM ');
disp(ass);
fprintf('\n\n');
%% @MAPPER Module

x1=[0:M-1];
% constalation mapping for 4-QAM acording to symbol based on Gray Code
p=qammod(ass,M)
sym=0:1:M-1;
pp=qammod(sym,M);
% constalation diagram for 4-QAM
scatterplot(pp,[],[],'r*');
grid on;
title('Constellation Diagram');

%% @Modulation Module
RR=real(p)
II=imag(p)
%symbol period
sp=bp*2;                                     
% symbol rate
sr=1/sp;                                                     
f=sr*2;
t=sp/100:sp/100:sp;
ss=length(t);
m=[];
for(k=1:1:length(RR))
    % @I : inphase component
    yr=RR(k)*cos(2*pi*f*t);                    
    % @Q : Quadrature component
    yim=II(k)*sin(2*pi*f*t);
    y=yr+yim;
    m=[m y];
end
tt=sp/100:sp/100:sp*length(RR);
figure(1);
plot(tt,m);

title('4-QAM Waveform in Time Domain');
xlabel('time(sec)');
ylabel('dB');

