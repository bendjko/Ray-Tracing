% Part 1, task 1

%% Make the rays which start at (0,0,0)
%make the inital values
d = .2;
x1 = 0;
thetax = [0 pi/10, -pi/10, pi/20, -pi/20];
thetay = [0 pi/10, -pi/10, pi/20, -pi/20];
y1 = 0;

%run the simulation for all angles
for i=1:5
x = thetax(i);
y = thetay(i);

rays_out = [x1+(d*x); x; y1+(d*x); y];
rays_in = [x1; x; y1; y];

ray_z = [zeros(1,size(rays_in,2)); d*ones(1,size(rays_in,2))];

%plot the rays
plot(ray_z, [rays_in(1,:); rays_out(1,:)],'b');
hold on;

end
xlabel("z (m)");
ylabel("x (m)");

%% Make the rays which start at (10,0,0)
%make the inital values
d = .2;
x1 = .01;
thetax = [0 pi/10, -pi/10, pi/20, -pi/20];
thetay = [0 pi/10, -pi/10, pi/20, -pi/20];
y1 = 0;

%run the simulation for all angles
for i=1:5
x = thetax(i);
y = thetay(i);

rays_out = [x1+(d*x); x; y1+(d*x); y];
rays_in = [x1; x; y1; y];

ray_z = [zeros(1,size(rays_in,2)); d*ones(1,size(rays_in,2))];

%plot the rays
plot(ray_z, [rays_in(1,:); rays_out(1,:)],'r');
hold on;

end

xlabel("z (m)");
ylabel("x (m)");