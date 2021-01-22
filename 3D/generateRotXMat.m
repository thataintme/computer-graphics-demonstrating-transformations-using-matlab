function M = generateRotXMat(theta)
    M = eye(4);
    M(2,2) = cosd(theta);
    M(2,3) = -sind(theta);
    
    M(3,2) = sind(theta);
    M(3,3) = cosd(theta);
    
end