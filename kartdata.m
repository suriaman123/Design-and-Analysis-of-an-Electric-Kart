%Kart Model Data

%The motor Data
KT=0.12;    %Torque Constant Nm/amp, 
KV=0.127;   %EMF voltage constant Volts/(rad/s) 
La=0.01;    %inductance of the armature (Henry)
Ra=0.053;   %Resistance ohms
va=48;      %Input voltage volts

%The kart Data
Rw= .125;      %Rolling Radius of Wheel m
Gr=2;        %Gear Ratio
Mass=200;    %kart Mass kg

g=9.81;      %gravity Acceleration
RRc=.02;     %Rolling Resistance Coefficient

FD=Mass*g*RRc;       %Rolling Resistance

A=0.5;       %sectional Area m^2
p=1.202;     %Air density kg/m^3
Cd=.6;       %Drag Coefficient  

AD=0.5*A*Cd*p; %Aero DRag Coeff

Accel=300;   %Acceleration Demand amps
Decel=300;   %Deceleration Demand amps

BP=200;     %Brake point m

load xt;
