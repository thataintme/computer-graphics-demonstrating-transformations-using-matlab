clc
clear all

point = [5;5]
size = 5;
sz=size/2
xlim = [0 0 45 45];
ylim = [0 45 45 0];

x = [point(1)-sz point(1)-sz point(1)+sz point(1)+sz point(1)-sz];
y = [point(1)-sz point(1)+sz point(1)+sz point(1)-sz point(1)-sz];
pointmatrix = [x;y]

%plot(x, y, 'Color','b');
%sprintf('Original square in blue\n');
pause(0.5);
homomat = generateHomo(pointmatrix)

direction =1;
transfact = [0.1;0];
n=360;
duphomo = homomat;


for i=1:n
    plot(xlim, ylim, 'Color','b');
    hold on;
    %pause(0.1);
    
    transmat = generateTransMat(direction*transfact);
    duphomo = transmat*duphomo;
    plot(duphomo(1,:), duphomo(2,:), 'Color','green');
    pause(0.01)
    hold off
    
end 