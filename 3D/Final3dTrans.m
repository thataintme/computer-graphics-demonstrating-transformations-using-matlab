clc
clear all
choice = input('Enter your choice\n 1.Cube    2.Cuboid\n');
c=[0;0;0];s=0;homomat=[];
if choice == 1
    c = input('Enter the center coord of the cube\n')
    s = input('Enter the size of the cube\n')
    homomat = generateCubeCoordHomo(c,s)
else
    c = input('Enter the center coord of the cuboid\n')
    dim = input('Enter the dimensions of the cuboid\n')
    homomat = generateCubeCoordHomo(c,1);
    homomat = generateScalMat(dim)*homomat
end


homomatPlot = drawingCubeCoord(homomat);
plot3(homomatPlot(1,:), homomatPlot(2,:), homomatPlot(3,:), 'Color', 'blue');
hold on;

t = input('Enter the translation factor\n');
t = generateTransMat(t);
transpt1 = t*homomat;
transpt = drawingCubeCoord(transpt1);
plot3(transpt(1,:), transpt(2,:), transpt(3,:), 'Color', 'red');


r = input('Enter the rotation angles\n');
r = generateRotMat(r);
rotpt1 = r*homomat;
rotpt = drawingCubeCoord(rotpt1);
plot3(rotpt(1,:), rotpt(2,:), rotpt(3,:), 'Color', 'green');


s = input('Enter the Scaling factor (Fun fact: I generated cuboid by scaling a cube using this function)\n');
s = generateScalMat(s);
scalpt1 = s*homomat;
scalpt = drawingCubeCoord(scalpt1);
plot3(scalpt(1,:), scalpt(2,:), scalpt(3,:), 'Color', 'black');



hold off;