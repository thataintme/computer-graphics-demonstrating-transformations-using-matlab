function M = generateTransMat(fact)
    fact = [fact;1];
    I = [eye(3);0 0 0];
    M = [I fact]
end