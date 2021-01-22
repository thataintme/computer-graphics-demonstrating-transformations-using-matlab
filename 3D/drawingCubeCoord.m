function M = drawingCubeCoord(homomat)
    M = [homomat(:,1:4) homomat(:,1) homomat(:,5:8) homomat(:,5) homomat(:,8) homomat(:,4) homomat(:,3) homomat(:,7) homomat(:,6) homomat(:,2)];
end