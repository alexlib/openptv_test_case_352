% CAL352.M prepares the calibration plate file 
% for the 3D-PTV software

%{
 Calibration File (imX999.raw)
   Particles (Total 27 particles)
     x = -0.8, 0, 0.8 cm
     y = -0.8, 0, 0.8 cm
     z = -0.8, 0, 0.8 cm

%}

X = [-8,0,8]; % mm
[x,y,z] = meshgrid(X,X,X);
% [x,y,z] = meshgrid(-2:2,-2:2,-2:2);


fid = fopen('cal352.txt','w');

cal = [(1:length(x(:)))',x(:),y(:),z(:)];

% fprintf(fid,'%5d %9.4f %9.4f %9.4f\n',cal');
fprintf(fid,'%5d %5d %5d %5d\n',cal');
fclose(fid)
