clear;
close all;

load('lightField.mat');
xData = rays(1,:);
yData = rays(3,:);

%% Changing Sizec
figure();
output = rays2img(xData, yData, 0.005, 500);
subplot(2,2,1);
imshow(output);
title("5mm");

output = rays2img(xData, yData, 0.01, 500);
%figure();
subplot(2,2,2);
imshow(output);
title("10mm");

output = rays2img(xData, yData, 0.001, 500);
%figure();
subplot(2,2,3);
imshow(output);
title("1mm");

output = rays2img(xData, yData, 0.05, 500);
%figure();
subplot(2,2,4);
imshow(output);
title("50mm");

%% Changing # of pixels
output = rays2img(xData, yData, 0.005, 250);
figure();
imshow(output);
title("5mm, 250");

output = rays2img(xData, yData, 0.005, 500);
figure();
imshow(output);
title("5mm, 500");

output = rays2img(xData, yData, 0.005, 750);
figure();
imshow(output);
title("5mm, 750");

output = rays2img(xData, yData, 0.005, 1000);
figure();
imshow(output); 
title("5mm, 1000");

%% (d) 
xData = rays(1,:);
yData = rays(3,:);
thetaxData = rays(2,:);
thetayData = rays(4,:);

d = .2;

finalX = xData + (thetaxData*d);    
finalY = yData + (thetayData *d);
propagateRays = rays2img(finalX, finalY, 0.01, 500);
figure;
imshow(propagateRays);


