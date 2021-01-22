function M = generateRotYMat(theta)
    M = eye(4);
    M(1,1) = cosd(theta);
    M(1,3) = sind(theta);
    
    M(3,1) = -sind(theta);
    M(3,3) = cosd(theta);
end