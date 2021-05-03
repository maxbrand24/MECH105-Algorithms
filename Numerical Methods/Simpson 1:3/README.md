Simpsons 1/3 Algorithm# H1
Summary:
This is a MATLAB function for integrating experimental data using Simpson’s 1/3 rule. The fucntion will check if there are an odd number of intervals, if there are, the trapezoidal rule will be used for the last interval. The function numerically evaluates the integral of the vector of function values y with respect to x. There is also an error check for if inputs are the same length an error check that the x input is equally spaced, and the algorithm will warn the user if the trapezoidal rule has to be used on the last interval.
Summary:
Serves as a function that takes inputs x and y which respresent vectors of the independent and dependent variables respectively. Checks if x and y are different length as well as if x is unequally spaced, if so results in an error. If x represents an odd number of points, then the Simpsons 1/3 formula is applied to approximate the integral. If x does not represent an odd number of points, then the 1/3 formula is applied until the last section, then the trapezoidal rule is applied for the last section.

Inputs:
x - vector of independent variable
y - vector of dependent variable

Outputs:
I - the estimation of the integral

Limitations:
Could not get the function to 'Solve a real problem' or to 'Solve a real problem, with Trapezoid rule on end' due to error in 1/3 formula. Should be consisting of even and odd points.
