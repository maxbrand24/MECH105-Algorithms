function [L, U, P] = luFactor(A)
% luFactor(A)
%	LU decomposition with pivotiing
% inputs:
%	A = coefficient matrix
% outputs:
%	L = lower triangular matrix
%	U = upper triangular matrix
%       P = the permutation matrix
[r, c] = size(A);
    %Error checking to make sure that the matrix is square
   if r~=c 
    error('Invalid input: Matrix needs to be square')
   end
    
    %Sets the identity matrix for both the lower and pivot identity matrix 
    L=eye(c); 
    P=eye(c); 
    U=A;
    for k=1:r-1
        %Partial pivoting to find the value of the largest
        %number in the first column of the matrix.
        pivot=max(abs(U(k:r,k)));
        for j=k:r
            if(abs(U(j,k))==pivot)
               big=j;
                break;
            end
        end
        %Swithces the rows of the matrix after the pivoting.
        U([k,big],k:r)=U([big,k],k:r);
        L([k,big],1:k-1)=L([big,k],1:k-1); 
        P([k,big],:)=P([big,k],:);
        
         %Divide down 1 from the pivot
         % Equation to find the ratio for the lower matrix. As well this
         % populates L with the values found in from the ratio.
         L(k+1:r,k)=U(k+1:r,k)/U(k,k)
         %This is used to populate the values of the Upper triangular
         %matrix with the values from Gauss elimination.
         U(k+1:r,k:r)=U(k+1:r,k:r)-L(k+1:r,k)*U(k,k:r)
    
         A=A
       
        end
