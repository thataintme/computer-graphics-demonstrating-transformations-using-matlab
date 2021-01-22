function M = generateCubeCoord(center,size)
    c=center;
    %s = 0*center + size
    d = size/2;
    p1 = [c(1)-d ; c(2)+d ; c(3)+d];
    p2 = [c(1)+d ; c(2)+d ; c(3)+d];
    p3 = [c(1)+d ; c(2)-d ; c(3)+d];
    p4 = [c(1)-d ; c(2)-d ; c(3)+d];
   
    p5 = [c(1)-d ; c(2)+d ; c(3)-d];
    p6 = [c(1)+d ; c(2)+d ; c(3)-d];
    p7 = [c(1)+d ; c(2)-d ; c(3)-d];
    p8 = [c(1)-d ; c(2)-d ; c(3)-d];
    
    M = [p1 p2 p3 p4 p5 p6 p7 p8];
    
end