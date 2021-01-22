function f = generateRotMat(theta)
    f = eye(3);
    f(1,1) = cosd(theta);
    f(1,2) = -sind(theta);
    f(2,1) = sind(theta);
    f(2,2) = cosd(theta);
end