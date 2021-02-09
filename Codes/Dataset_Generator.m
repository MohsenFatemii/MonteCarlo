function [x y label] = Dataset_Generator (num_of_points)
% Defining the margins of the square
xmin=-2;
xmax=2;

% Generating num_of_points random points
x=xmin+rand(1,num_of_points)*(xmax-xmin);
y=xmin+rand(1,num_of_points)*(xmax-xmin);

% Defining a vector for the label of each point
label = zeros(1,num_of_points);

% Labeling generated numbers based on whether they are inside the donut or not
for i = 1:num_of_points
  if x(i).*x(i) + y(i).*y(i) <=4 && x(i).*x(i) + y(i).*y(i) >=1 % checking condition
    label(i) = 1;
  else
    label(i) = 0;
  endif
endfor

endfunction
