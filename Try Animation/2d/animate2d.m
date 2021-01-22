clc
clear all

point = [5;5];
size = 5;
sz=size/2;
n = 360;        %number of frames
tfact = [30;5]; %Final translation point
duptfact = tfact/n;
duppoint = point;

xlim = [0 0 40 40];
ylim = [0 40 40 0];

x = [point(1)-sz point(1)-sz point(1)+sz point(1)+sz point(1)-sz];
y = [point(1)-sz point(1)+sz point(1)+sz point(1)-sz point(1)-sz];
pointmatrix = [x;y]


pause(0.5);
homomat = generateHomo(pointmatrix);

duphomo = homomat;
for i=1:(360/n):n
    plot(xlim, ylim, 'Color','b');
    hold on;
    %pause(0.1);
    rot = i;
    rotmat = generateRotMat(rot);
    
    duphomo = homomat;
    transmat = generateTransMat(-duppoint-(i*duptfact));
    duphomo = transmat*duphomo;
    duphomo = rotmat*duphomo;
    duphomo = inv(transmat)*duphomo;
 
    plot(duphomo(1,:), duphomo(2,:), 'Color','green');
    pause(0.01)
    hold off

end 