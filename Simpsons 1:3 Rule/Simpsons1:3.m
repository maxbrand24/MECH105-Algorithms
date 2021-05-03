function [I] = Simpson(x, y)
% Numerical evaluation of integral by Simpson's 1/3 Rule
% Inputs
%   x = the vector of equally spaced independent variable
%   y = the vector of function values with respect to x
% Outputs:
%   I = the numerical integral calculated
    x_length = length(x);
    if x_length~=length(y)
        error('Invalid input, ')
    end
    
    h = x(2)-x(1);
    if x_length==2
        warning('The trapizoidal rule will be used.')
        I = h*(y(1)+y(2))/2;
    else
        for i=2: x_length-1
            space_eval = x(i+1)-x(i);
            if space_eval ~= h
                error('Inval input.')
            end
        end
        trap=0;
        if mod(x_length,2)==0
            warning('The trapizoidal rule will have to be used.')
            trap=1;
            a=x_length-1;
        else
            a=x_length;
        end
    
        I=0;
        for j=1: 2: a-2
                I=I+y(j)+4*y(j+1)+y(j+2);
        end

        I=h*I/3;
        if trap==1
            I=I+(y(x_length)-y(x_length-1))/h;
        end
    end
end
  
