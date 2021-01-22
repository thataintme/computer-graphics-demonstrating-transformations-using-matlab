function mat = create3dCircleMat(centre,r,sides)
    x =[];
    y=[];
    z=[];
    for theta = 0:(2*pi)/sides:2*pi
        x = [x (r*cos(theta)+centre(1))];
        y = [y (r*sin(theta)+centre(2))];
        z = [z centre(3)];
    end
    d(1:length(x)) = 1;
    mat = [x;y;z;d];
end