function f = generateTransMat(factor)
    f = eye(3);
    f(1:2,3) = factor
end