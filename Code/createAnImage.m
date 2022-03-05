%% 2.3 A


%make the inital values
f = .1;
d2 = .2;
numFrames = 1;
d_lower = 0;
d_upper = .1;
f_lower = 0.4;
f_upper = .8;
load lightField.mat

x1 = rays(1,:);
y1 = rays(3,:);
thetax1 = rays(2,:);
thetay1 = rays(4,:);

%define the varius M matricies
M_2 = [1 d2 0 0; 0 1 0 0; 0 0 1 d2; 0 0 0 1];
M_f = [1 0 0 0; (-1/f) 1 0 0; 0 0 1 0; 0 0 (-1/f) 1];


rays_in = [x1; thetax1; y1; thetay1];
%run the simulation on lightField.mat
for d2 = linspace(d_lower, d_upper, numFrames)


rays_out = M_f*rays_in;
newRaysOut = M_2*rays_out;

rays_x = newRaysOut(1,:);
rays_y = newRaysOut(3,:);


figure;
[output x y] = rays2img(rays_x,rays_y,.01,500);
imagesc(output);
title ("CreateAnImage");
xlabel("Pixels");
ylabel("Pixels");

end
