% Part 2, task 1

%% A
%make the inital values
d = .2;
d2 = .4;
thetax = [0 pi/10, -pi/10, pi/20, -pi/20];
thetay = [0 pi/10, -pi/10, pi/20, -pi/20];
y1 = 0;
f = .1;

xs = [0, .01];

%run the simulation 
figure;
hold on;
for k = 1:2
x1 = xs(k);

for i=1:5
x = thetax(i);
y = thetay(i);
rays_in = [x1; x; y1; y];

%make the varius M matricies
M_1 = [1 d 0 0; 0 1 0 0; 0 0 1 d; 0 0 0 1];
M_2 = [1 d2 0 0; 0 1 0 0; 0 0 1 d2; 0 0 0 1];
M_f = [1 0 0 0; (-1/f) 1 0 0; 0 0 1 0; 0 0 (-1/f) 1];

%apply the matrix transformations to the rays
rays_out = M_1*rays_in;
newRays_in = M_f*rays_out;
newRays_out = M_2*newRays_in;

%set ray_z
ray_z = [zeros(1,size(rays_in,2)); d*ones(1,size(rays_in,2)); d2*ones(1,size(newRays_in,2))];

%set the color the rays are plotted as based off their starting x value
if k == 1
    plot(ray_z, [rays_in(1,:); rays_out(1,:); newRays_out(1,:)],'b');
end
if k == 2
     plot(ray_z, [rays_in(1,:); rays_out(1,:); newRays_out(1,:)],'r');   
end

hold on;


xlabel("z (m)");
ylabel("x (m)");
title("Task 2.2.1a");
end
end
hold off;
%% B
%make the inital values
d = .2;
d2 = .4;
thetax = [0 pi/10, -pi/10, pi/20, -pi/20];
thetay = [0 pi/10, -pi/10, pi/20, -pi/20];
y1 = 0;
f = .1;

xs = [0, .01, .04];

%run the simulation 
figure;
hold on;
for k = 1:3
x1 = xs(k);

for i=1:5
x = thetax(i);
y = thetay(i);
rays_in = [x1; x; y1; y];

%make the varius M matricies
M_1 = [1 d 0 0; 0 1 0 0; 0 0 1 d; 0 0 0 1];
M_2 = [1 d2 0 0; 0 1 0 0; 0 0 1 d2; 0 0 0 1];
M_f = [1 0 0 0; (-1/f) 1 0 0; 0 0 1 0; 0 0 (-1/f) 1];

rays_out = M_1*rays_in;
newRays_in = M_f*rays_out;
newRays_out = M_2*newRays_in;


ray_z = [zeros(1,size(rays_in,2)); d*ones(1,size(rays_in,2)); d2*ones(1,size(newRays_in,2))];

%set the color the rays are plotted as based off their starting x value
if k == 1
    plot(ray_z, [rays_in(1,:); rays_out(1,:); newRays_out(1,:)],'b');
end
if k == 2
     plot(ray_z, [rays_in(1,:); rays_out(1,:); newRays_out(1,:)],'r');   
end
if k == 3
    plot(ray_z, [rays_in(1,:); rays_out(1,:); newRays_out(1,:)],'Color', '[0, 0.4, 0.07]');
end
hold on;


xlabel("z (m)");
ylabel("x (m)");
title("Task 2.2.1b");
end
end

%% C
%make the inital values
d = .2;
d2 = .4;
thetax = [0 pi/10, -pi/10, pi/20, -pi/20];
thetay = [0 pi/10, -pi/10, pi/20, -pi/20];
y1 = 0;
fs = [.05, .1, .2];
d2s = [.2, .3, .5, 1];
xs = [0, .01, .04];

%run the loop to go through and plot the varius f values
for j = 1:length(fs)
f = fs(j);
hold off;
figure;
title("f of " + num2str(f))
hold on;

for k = 1:3
    x1 = xs(k);

for i=1:5
x = thetax(i);
y = thetay(i);
rays_in = [x1; x; y1; y];

%make the varius M matricies
M_1 = [1 d 0 0; 0 1 0 0; 0 0 1 d; 0 0 0 1];
M_2 = [1 d2 0 0; 0 1 0 0; 0 0 1 d2; 0 0 0 1];
M_f = [1 0 0 0; (-1/f) 1 0 0; 0 0 1 0; 0 0 (-1/f) 1];

rays_out = M_1*rays_in;
newRays_in = M_f*rays_out;
newRays_out = M_2*newRays_in;

ray_z = [zeros(1,size(rays_in,2)); d*ones(1,size(rays_in,2)); d2*ones(1,size(newRays_in,2))];

%set the color the rays are plotted as based off their starting x value
if k == 1
    plot(ray_z, [rays_in(1,:); rays_out(1,:); newRays_out(1,:)],'b');
end
if k == 2
     plot(ray_z, [rays_in(1,:); rays_out(1,:); newRays_out(1,:)],'r');   
end
if k == 3
    plot(ray_z, [rays_in(1,:); rays_out(1,:); newRays_out(1,:)],'Color', '[0, 0.4, 0.07]');
end
hold on;


xlabel("z (m)");
ylabel("x (m)");

end
end
end


%run the loop to go through and plot the varius d2 values
for j = 1:length(d2s)
d2 = d2s(j);
hold off;
figure;
title("d_2 of " + num2str(d2))
hold on;

for k = 1:3
    x1 = xs(k);

for i=1:5
x = thetax(i);
y = thetay(i);
rays_in = [x1; x; y1; y];

%make the varius M matricies
M_1 = [1 d 0 0; 0 1 0 0; 0 0 1 d; 0 0 0 1];
M_2 = [1 d2 0 0; 0 1 0 0; 0 0 1 d2; 0 0 0 1];
M_f = [1 0 0 0; (-1/f) 1 0 0; 0 0 1 0; 0 0 (-1/f) 1];

rays_out = M_1*rays_in;
newRays_in = M_f*rays_out;
newRays_out = M_2*newRays_in;

ray_z = [zeros(1,size(rays_in,2)); d*ones(1,size(rays_in,2)); d2*ones(1,size(newRays_in,2))];

%set the color the rays are plotted as based off their starting x value
if k == 1
    plot(ray_z, [rays_in(1,:); rays_out(1,:); newRays_out(1,:)],'b');
end
if k == 2
     plot(ray_z, [rays_in(1,:); rays_out(1,:); newRays_out(1,:)],'r');   
end
if k == 3
    plot(ray_z, [rays_in(1,:); rays_out(1,:); newRays_out(1,:)],'Color', '[0, 0.4, 0.07]');
end
hold on;


xlabel("z (m)");
ylabel("x (m)");

end
end
end
