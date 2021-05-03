function [root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit, varargin)
%falsePosition finds the root of a function using false position method
format long
if nargin<3 error('There are too little inputs. Check number of inputs')
end
test= func(xl, varargin{:})* func(xu, varargin{:});
if test>0 error('Please choose another interval guess')
end
if nargin<4 || isempty(es), es=0.0001;
end
if nargin<5 || isempty(maxit), maxit=200;
end
iter=0; 
xr=xl; 
ea=100;
while (1)
    xr_old=xr;
    xr=xu-(func(xu, varargin{:})*(xl-xu))/(((func(xl, varargin{:})-func(xu, varargin{:}))));
    iter= iter +1;
    if xr~=0, ea=abs((xr-xr_old)/xr)*100; 
    end
    test= func(xl, varargin{:}).*func(xr,varargin{:});
    if test<0
        xu=xr;
    elseif test>0
        xl=xr;
    else
        ea=0;
    end
    if ea<=es || iter>= maxit, break, end
end
   
    root= xr; 
    fx=func(xr,varargin{:});
    
    fprintf('The root, or zero, of the function is %f\n', xr)
    fprintf('The x value of the function of the root is %f\n', fx)
    fprintf('The approximate relative  percent error that occurs is %f\n', ea)
    fprintf('The number of iterations performed was %f\n', iter)

% bisect: root location zeroes 
%   [root,fx,ea,iter] = bisect(func,xl,xu,es,maxit,p1,p2,…):
%       uses bisection method to find the root of func
% input:
%   func = name of function 
%   xl, xu = lower and upper guesses
%   es = desired relative error (default = 0.0001%)
%   maxit = maximum allowable iterations (default = 50)
%   p1,p2,… = additional parameters used by func
% output:
%   root = real root
%   fx = function value at root
%   ea = approximate relative error (%)
%   iter = number of iterations

end
