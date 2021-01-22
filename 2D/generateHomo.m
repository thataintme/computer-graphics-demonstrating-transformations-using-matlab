function g = generateHomo(pts)
    u(1:length(pts)) = 1;
    g = [pts;u]; %this is the homogeneous form of the points matrix
end