% Defining Room dimensions

len = 10;
wid = 4;
hei = 3;

% Defining light intensity, bulbs, and position

bulb1 = 150;
bulb2 = 150;

Y = 2;

d1 = 7
d2 = 3


%this way i can reduce code by making d1 and d2
%as parameters and update them as i check different bulb positions
total_intensity = @(x, y, d1, d2) ...
    (bulb1 ./ (4 * pi * ((x - d1).^2 + (y - Y).^2 + hei^2))) + ...
    (bulb2 ./ (4 * pi * ((x - d2).^2 + (y - Y).^2 + hei^2)));

%ezcontour expects x,y however since i have d1 and d2
%i need to hide the extra parameters in a new function
ezcontourf(@(x, y) total_intensity(x, y, d1, d2), [0 len 0 wid], 20);
title("Bulbs at coordinate 7 and 3")
colormap("hot");

% Finding intensity at the corners of the room and center

center = total_intensity(5, 2, d1, d2)
corner1 = total_intensity(0, 0, d1, d2)
corner2 = total_intensity(len, wid, d1, d2)
corner3 = total_intensity(0, wid, d1, d2)
corner4 = total_intensity(len, 0, d1, d2)

% Bulbs at 8 & 2

d1 = 8
d2 = 2

figure;
ezcontourf(@(x, y) total_intensity(x, y, d1, d2), [0 len 0 wid], 20);
title("Bulbs at coordinate 8 and 2")
colormap("hot");

center = total_intensity(5, 2, d1, d2)
corner1 = total_intensity(0, 0, d1, d2)
corner2 = total_intensity(len, wid, d1, d2)
corner3 = total_intensity(0, wid, d1, d2)
corner4 = total_intensity(len, 0, d1, d2)

% Bulbs at 1 & 9

d1 = 9
d2 = 1

figure;
ezcontourf(@(x, y) total_intensity(x, y, d1, d2), [0 len 0 wid], 20);
title("Bulbs at coordinate 9 and 1")
colormap("hot");

center = total_intensity(5, 2, d1, d2)
corner1 = total_intensity(0, 0, d1, d2)
corner2 = total_intensity(len, wid, d1, d2)
corner3 = total_intensity(0, wid, d1, d2)
corner4 = total_intensity(len, 0, d1, d2)
