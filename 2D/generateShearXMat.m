function f = generateShearXMat(shx)
    f = eye(3);
    f(1,2) = shx;
end
