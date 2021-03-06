function circle()
    centre = input('Enter the point coordinates of the centre\n');
    radius = input('Enter the radius\n');
    sides = input('Enter the number of sides to draw (smaller number is less curvy but faster)\n');
    
     homomat = createCircleMatrix(centre,radius,sides)
     
     plot(homomat(1,:), homomat(2,:), 'Color','blue');
     hold on;
     
     
     fact = input('Enter the translation factor\n');
     transmat = generateTransMat(fact)
     transpt = transmat*homomat
     plot(transpt(1,:), transpt(2,:), 'Color','red');
     
     
     
     rot = input('Enter the rotation factor\n');
     rotmat = generateRotMat(rot)
     rotpt = rotmat*homomat
     plot(rotpt(1,:), rotpt(2,:), 'Color','green');
     
     
     
     scal = input('Enter the scaling factor\n');
     scalmat = generateScaleMat(scal)
     scalpt = scalmat*homomat
     plot(scalpt(1,:), scalpt(2,:), 'Color','black');
     
     
     shx = input('Enter the X shearing factor\n');
     shxmat = generateShearXMat(shx)
     shxpt = shxmat*homomat
     plot(shxpt(1,:), shxpt(2,:), 'Color','cyan');
     
     
     shy = input('Enter the Y shearing factor\n');
     shymat = generateShearYMat(shy)
     shypt = shymat*homomat
     plot(shypt(1,:), shypt(2,:), 'Color','magenta');
     
     
    hold off;
    
end