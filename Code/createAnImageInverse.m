%% 3.2.3


%make the inital values
d = .2;
load lightField.mat

x1 = rays(1,:);
y1 = rays(3,:);
thetax1 = rays(2,:);
thetay1 = rays(4,:);

%define the varius M matricies
mdInverse = [1 -d 0 0; 0 1 0 0; 0 0 1 -d; 0 0 0 1];

rays_in = [x1; thetax1; y1; thetay1];
%run the simulation on lightField.mat

rays_out = mdInverse*rays_in;

rays_x = rays_out(1,:);
rays_y = rays_out(3,:);

[output x y] = rays2img(rays_x,rays_y,.01,500);

figure;
imagesc(output);
title ("Md inverse");
xlabel("Pixels");
ylabel("Pixels");

