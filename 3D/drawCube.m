function drawCube(homomat)
    M = homomat([1 2 3],:);
    
    C0=homomat;
    
    %plotting
    C= [homomat(:,1:4) homomat(:,1) homomat(:,5:8) homomat(:,5) homomat(:,8) homomat(:,4) homomat(:,3) homomat(:,7) homomat(:,6) homomat(:,2)]
    %D= T1*C;
    plot3(C(1,:), C(2,:), C(3,:), 'b');
    %plot3(D(1,:), D(2,:), D(3,:), 'r');
    xlabel('x'); ylabel('y'); zlabel('z');

end