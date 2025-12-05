len = 10;
wid = 4;
hei = 3;
Y = 2;
bulb = 150;

d = 0:0.01:5;
x_1 = d;
x_2 = 10 - d;

% intensity at Corner(0,0)
distance1 = sqrt((0 - x_1).^2 + (0 - Y)^2 + hei^2);
distance2 = sqrt((0 - x_2).^2 + (0 - Y)^2 + hei^2);
cornerIntensity = (bulb./(4*pi*distance1.^2)) + (bulb./(4*pi*distance2.^2));

% intensity at Midpoint(5,0)
distance1 = sqrt((5 - x_1).^2 + (0 - Y)^2 + hei^2);
distance2 = sqrt((5 - x_2).^2 + (0 - Y)^2 + hei^2);
midpointIntensity = (bulb./(4*pi*distance1.^2)) + (bulb./(4*pi*distance2.^2));

plot(d, cornerIntensity, d, midpointIntensity)
xlabel('d')
ylabel('Intensity')
legend('Corner', 'Midpoint')
