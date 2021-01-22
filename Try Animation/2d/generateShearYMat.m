function f = generateShearYMat(shy)
    f = eye(3);
    f(2,1) = shy;
end
