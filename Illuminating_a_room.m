% Defining Room dimensions

len = 10;
wid = 4;
hei = 3;

% Defining the light intensity

bulb = 300;
                                          %using distance formula
intensity = @(x, y) bulb./(4 * pi * (sqrt((x - 5).^2 + (y - 2).^2 + hei^2)).^2);
% I had to include @(x,y) because ezcontourf needs a function of x and y

% Plotting the expression over the floor and arranging a color gradation

ezcontourf(intensity, [0 len 0 wid]);
colormap("hot");

% Finding intensity at the corners of the room and center

center = intensity(5,2)
corner1 = intensity(0, 0)
corner2 = intensity(len, wid)
corner3 = intensity(0, wid)
corner4 = intensity(len, 0)
