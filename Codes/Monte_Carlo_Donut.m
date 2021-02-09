% Calculating the actual Area of donut
Actual_Area = pi*2*2 - pi*1*1;

% Defining the number of random generated points
number_of_points = [100 1000 5000 10000 20000 40000];
j = 1
for points = number_of_points
  % Defining a variable in order to calculate the
  % mean of resulted Approximate areas using
  % Monte carlo Area Estimation method
  sum_ = 0;

  % Defining the number of iterations  
  number_of_iterations = 10;

  % Calculating the Approximated Area
  % number_of_iterations times
  for i = 1:number_of_iterations
    
    % Generating dataset
    [x y label] = Dataset_Generator(points);
    
    % Finding the number of points inside the donut
    number_of_points_inside_donut = sum(label);
    
    % Calculating the Area of the Square
    area_of_square = 4*4;
    
    % Calculating the approximate area of the donut
    approximate_area = (number_of_points_inside_donut/points)*area_of_square;
    
    % Adding approximated area to sum_ variable
    sum_ = sum_ + approximate_area;
  endfor

  % Calculating the mean_ of number_of_iterations
  % found approximate areas
  mean_ = sum_/number_of_iterations;

  % Creating the title for the plot
  title0 = sprintf('Number of Points = %d',points)
  title1 = sprintf('Actual Area = %.4f', Actual_Area)
  title2 = sprintf('Estimated Area = %.4f',mean_)
  title3 = sprintf('Error = %.4f',abs(mean_-Actual_Area))

  % Drawing the plot
  Draw_Plot(x,y,label,title0,title1,title2,title3,j);
  j = j+1;
endfor