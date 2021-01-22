clc
clear all

point = [5;5]
size = 5;
sz=size/2
xlim = [0 0 10 10];
ylim = [0 10 10 0];

x = [point(1)-sz point(1)-sz point(1)+sz point(1)+sz point(1)-sz];
y = [point(1)-sz point(1)+sz point(1)+sz point(1)-sz point(1)-sz];
pointmatrix = [x;y]

%plot(x, y, 'Color','b');
%sprintf('Original square in blue\n');
pause(0.5);
homomat = generateHomo(pointmatrix)

n=360; %number of frames
for i=1:n
    plot(xlim, ylim, 'Color','b');
    hold on;
    %pause(0.1);
    rot = i;
    rotmat = generateRotMat(rot);
    
    duphomo = homomat;
    transmat = generateTransMat(-point);
    duphomo = transmat*duphomo;
    duphomo = rotmat*duphomo;
    duphomo = inv(transmat)*duphomo;
 
    plot(duphomo(1,:), duphomo(2,:), 'Color','green');
    pause(0.01)
    hold off

end 