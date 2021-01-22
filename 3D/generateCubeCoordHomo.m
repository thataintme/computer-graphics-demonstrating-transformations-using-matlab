function M = generateCubeCoordHomo(center,size)
    M = generateCubeCoord(center,size);
    M = [M;ones(1,8)]
    
end