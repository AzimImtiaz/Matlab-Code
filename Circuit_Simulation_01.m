clc;
clear all;
close all;

V = 0:1:100;
Vp = 50;   
R1 = 10;
R2 = 10;
R3 = 20;
R4 = 5;
R5 = 15;

I1=(V-Vp)/R1;
I3=(R3*Vp)/(((R3+R4+R5)*(R2+R3))-(R3*R3));
I2=(Vp+I3*R3)/(R2+R3);
V1=I2*R2*ones(size(V));
V0=R5*I3*ones(size(V));

subplot(4,3,6)
plot(V,V1,'r',V,V0,'g')
grid on
xlabel('Voltage[V]');
ylabel('Voltage[V0,V1]');


subplot(4,3,4)
plot(V,I1,'r')
grid on
xlabel('Voltage[V]');
ylabel('Current[I1]');
