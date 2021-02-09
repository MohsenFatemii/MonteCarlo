function retval = Draw_Plot (x,y,label,title0,title1,title2,title3,j)
f = figure(j)
% Creating colorID for coloring the points based on their label
colorID = zeros(length(x),3);     % default is black

% The points outside the donut will be blue
colorID(label == 1,1) = 1;        %blue

% The points inside the donut will be red
colorID(label == 0,3) = 1;        %red

% The radius of each points on the scatter plot
pointsize = 20;

% Drawing the plot
scatter(x, y, pointsize,colorID, 'filled');

% Changing the axis font size
set(gca,'FontSize',20);
set(gcf,'position',[0 0 800 800])
title({title0,title1,title2,title3})
endfunction