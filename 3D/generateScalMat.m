function M = generateScalMat(fact)
    M = eye(4);
    M(1,1) = fact(1);
    M(2,2) = fact(2);
    M(3,3) = fact(3);
    
end