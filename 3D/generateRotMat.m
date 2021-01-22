function M = generateRotMat(angles)
    M = eye(4);
    
    M = generateRotXMat(angles(1)) * M;
    M = generateRotYMat(angles(2)) * M;
    M = generateRotZMat(angles(3)) * M;
    
end