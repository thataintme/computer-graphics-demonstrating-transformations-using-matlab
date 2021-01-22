function f = generateScaleMat(fact)
    f = eye(3);
    f(1,1) = fact(1);
    f(2,2) = fact(2);
end
