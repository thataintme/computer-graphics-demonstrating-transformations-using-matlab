clc
clear all

c = [0;0;0];
s = 2;
sz=s/2;
n = 180; %number of frames
homomat = generateCubeCoordHomo(c,sz);
limit = generateScalMat([2;2;2])*homomat;
limitPlot = drawingCubeCoord(limit);


screen = [-2.5 -2.5 2.5 2.5 -2.5 -2.5 -2.5;-2.5 2.5 2.5 -2.5 -2.5 2.5 2.5;-2.5 -2.5 -2.5 -2.5 -2.5 -2.5 2.5;1 1 1 1 1 1 1];
    plot3(screen(1,:), screen(2,:), screen(3,:), 'Color', 'blue');
    hold on;

centre = [5;5;2]
circlePts = create3dCircleMat(centre,1,50);
duppts = circlePts

for i = 1:180/n:n
    pause(0.05);
    transmat = generateTransMat(-centre);
    duppts = transmat*circlePts;
    rot = generateRotXMat(i);
    duppts = rot*duppts;
    plot3(duppts(1,:), duppts(2,:), duppts(3,:), 'Color', 'green')
end
hold off


% for i=1:360/n:n
%     plot3(screen(1,:), screen(2,:), screen(3,:), 'Color', 'blue');
%     hold on;
%     
%     diadup = generateRotZMat(1)*diadup;
%     plot3(diadup(1,:), diadup(2,:), diadup(3,:), 'Color', 'green');
%     hold off
%     pause(0.05);
% end
