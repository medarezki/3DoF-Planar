clear all 
close all 
clc

k=1;
m=1;

l1= 4;
l2= 2;
l3= 4;

q1= -pi/2:0.01:pi/2; 
q2= deg2rad(-180):0.01:deg2rad(+180); 
q3= -pi:0.01:pi; 


posx= zeros(1,length(q1)*length(q2));
posy= zeros(1,length(q1)*length(q2));

posxd= zeros(1,length(q1)*length(q2));
posyd= zeros(1,length(q1)*length(q2));

posx0= zeros(1,6480);
posy0= zeros(1,6480);

for i=1:25:length(q1)
    for j= 1:25:length(q2)
        for p= 1:25:length(q3)
        
        posx(k)= l1*cos(q1(i))+l2*cos(q1(i)+q2(j))+l3*cos(q1(i)+q2(j)+q3(p));
        posy(k)= l1*sin(q1(i))+l2*sin(q1(i)+q2(j))+l3*sin(q1(i)+q2(j)+q3(p)); 
    
        
         posxd(k)= l1*cos(q1(i))+l2*cos(q1(i)+q2(j));
         posyd(k)= l1*sin(q1(i))+l2*sin(q1(i)+q2(j));  
        
        k=k+1;
        end 
    end 
end 

for i=1:5:length(q1)
    for j= 1:5:length(q2)
        
        posx0(m)= l1*cos(q1(i));
        posy0(m)= l1*sin(q1(i));  
        m=m+1;
    end 
end 


 plot(posy, posx), hold on, plot(posyd, posxd), hold on, plot(posy0, posx0);

