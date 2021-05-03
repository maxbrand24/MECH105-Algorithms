function [base2] = binaryConverter(base10)
%binary A simple function to convert a base10 number to binary
%   Inputs:
%       base10 - A number in base10
%   Outputs:
%       base2 - The base10 number converted to binary
basenum = 2
input = base10
remainder = 0
count = 1
base2 = 0
while input ~= 0
    remainder = mod(input,basenum)
    input=floor(input./basenum)
    base2(count) = remainder
    count = count + 1
end
base2 = flip(base2)

end
