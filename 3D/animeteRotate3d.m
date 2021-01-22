clc
clear all

c = [0;0;0]
s = 5;
sz=s/2;
n = 360; %number of frames
homomat = generateCubeCoordHomo(c,sz);
limit = generateScalMat([2;2;2])*homomat;
limitPlot = drawingCubeCoord(limit);

plot3(limitPlot(1,:), limitPlot(2,:), limitPlot(3,:), 'Color', 'blue');
hold on;

rotfact = [45;45;45];
rotmatdia = generateRotMat(rotfact);
diamond = rotmatdia*homomat;
diaplot = drawingCubeCoord(diamond);
plot3(diaplot(1,:), diaplot(2,:), diaplot(3,:), 'Color', 'green');
hold off;
pause(0.05);

diadup = diaplot;

screen = [-2.5 -2.5 2.5 2.5;-2.5 2.5 2.5 -2.5;-2.5 -2.5 -2.5 -2.5;1 1 1 1];

for i=1:360/n:n
%     plot3(limitPlot(1,:), limitPlot(2,:), limitPlot(3,:), 'Color', 'blue');
%     hold on;
    screen = [-2.5 -2.5 2.5 2.5 -2.5 -2.5 -2.5;-2.5 2.5 2.5 -2.5 -2.5 2.5 2.5;-2.5 -2.5 -2.5 -2.5 -2.5 -2.5 2.5;1 1 1 1 1 1 1];
    plot3(screen(1,:), screen(2,:), screen(3,:), 'Color', 'blue');
    hold on;

    diadup = generateRotYMat(1)*diadup;
    plot3(diadup(1,:), diadup(2,:), diadup(3,:), 'Color', 'green');
    hold off
    pause(0.025);
end
