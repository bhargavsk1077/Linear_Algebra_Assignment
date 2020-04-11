// Eigen values


// input
disp('Input the matrix');
a11=input("Enter a11: ");
a12=input("Enter a12: ");
a13=input("Enter a13: ");
a21=input("Enter a21: ");
a22=input("Enter a22: ");
a23=input("Enter a23: ");
a31=input("Enter a31: ");
a32=input("Enter a32: ");
a33=input("Enter a33: ");

A=[a11,a12,a13;a21,a22,a23;a31,a32,a33];
lam = poly(0,'lam')
lam = lam
charMatrix = A - lam*eye(3,3)
disp(charMatrix,'characteristic Matrix is:')
charPoly = poly(A,'lam')
disp(charPoly,'characteristic polynomial is:')
lam = spec(A)
disp(lam,'Eigen values of matrix A :')
function[x,lam]=eigen(A)
    [n,m] = size(A);
    lam = spec(A)';
    x=[];
    for k = 1:3
        B = A - lam(k)*eye(3,3); // A - lambdaI
        C = B(1:n-1,1:n-1); //	make corresponding changes to the RHS too
        b = -B(1:n-1,n); // RHS of reduced matrix
        y = C\b; // solution
        y=[y;1];  // eigen vector
        y = y/norm(y); // eigen vector of unit magnitude
        x=[x y]; 
    end
endfunction

[x,lam] = eigen(A)
disp(x,'Eigen vectors of A are');
