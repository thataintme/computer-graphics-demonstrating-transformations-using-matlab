function M = generateRotZMat(theta)
    M = eye(4);
    M(1,1) = cosd(theta);
    M(1,2) = -sind(theta);
    
    M(2,1) = sind(theta);
    M(2,2) = cosd(theta);
end