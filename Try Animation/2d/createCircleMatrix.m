function mat = createCircleMat(centre,r,sides)
    x =[];
    y=[];

    for theta = 0:(2*pi)/sides:2*pi
        x = [x (r*cos(theta)+centre(1))];
        y = [y (r*sin(theta)+centre(2))];
    end
    d(1:length(x)) = 1;
    mat = [x;y;d];
end



% function h = circle(x,y,r)
% hold on
% th = 0:pi/50:2*pi;
% xunit = r * cos(th) + x;
% yunit = r * sin(th) + y;
% h = plot(xunit, yunit);
% hold off