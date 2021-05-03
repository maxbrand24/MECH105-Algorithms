#Simpsons 1/3 Algorithm
---
**Summary:**
This is a MATLAB function for integrating experimental data using Simpson’s 1/3 rule. The fucntion will check if there are an odd number of intervals, if there are, the trapezoidal rule will be used for the last interval. The function numerically evaluates the integral of the vector of function values y with respect to x. There is also an error check for if inputs are the same length an error check that the x input is equally spaced, and the algorithm will warn the user if the trapezoidal rule has to be used on the last interval.
---
**Inputs:**
- x - vector of independent variable
- y - vector of dependent variable
---
**Outputs:**
- I - the estimation of the integral
